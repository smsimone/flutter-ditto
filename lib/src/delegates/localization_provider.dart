import 'package:flutter/material.dart' hide Text;
import 'package:flutter_ditto/api/models/models.dart';

/// [RegExp] used to match variable names inside a [String]
final _variableRegexp = RegExp(r'\{\{(.*?)\}\}');

class LocalizationProvider {
  LocalizationProvider(this._currentLocale, this._texts);
  final Locale _currentLocale;
  final List<Text> _texts;

  Text _toText(String key) {
    assert(
      _texts.any((t) => t.key == key || t.componentId == key),
      'The key "$key" doesn\'t exist in the texts',
    );

    final text = _texts.firstWhere((t) => t.key == key || t.componentId == key);
    assert(
      text.variants != null,
      'Text $key has no variants: ${text.toJson()}',
    );
    return text;
  }

  String _getPlural(Text currentText, int count) {
    final plurals = currentText.plurals;
    if (plurals == null || !plurals.someValorized) {
      return currentText.text;
    } else if (count == 0 && plurals.zero != null) {
      return plurals.zero!;
    } else if (count == 1 && plurals.one != null) {
      return plurals.one!;
    } else if (count == 2 && plurals.two != null) {
      return plurals.two!;
    } else if (count >= 3 && count <= 5 && plurals.few != null) {
      return plurals.few!;
    } else if (count >= 6 && count <= 99 && plurals.many != null) {
      return plurals.many!;
    } else {
      if (plurals.other != null) return plurals.other!;
      return currentText.text;
    }
  }

  /// Returns all the variabels matched in [text]
  List<String> _getVariables(String text) {
    final matches = _variableRegexp.allMatches(text);
    return matches.map((m) => m.group(1)!).toList();
  }

  /// Apply the [variables] to the [text]
  String _applyVariables(String text, Map<String, dynamic> variables) {
    var tempText = text;
    variables.forEach(
      (key, value) => tempText = tempText.replaceAll(
        '{{$key}}',
        value?.toString() ?? '',
      ),
    );
    return tempText;
  }

  String translate(String key, {Map<String, String?>? variables, int? count}) {
    var text = _toText(key);
    assert(text.variants != null, 'Text of key $key has no variants');
    assert(
      text.variants![_currentLocale.languageCode] != null,
      'Missing variant for language ${_currentLocale.languageCode} for key $key',
    );
    text = text.variants![_currentLocale.languageCode]!;

    final variablesWithFallback = Map.fromEntries(
      (text.variables ?? []).map((e) {
        final value = variables?.containsKey(e.variableName) ?? false
            ? variables![e.variableName]
            : e.fallback;
        return MapEntry(e.variableName, value);
      }),
    );

    var currentText = count == null ? text.text : _getPlural(text, count);

    assert(
      _getVariables(currentText)
          .every((varName) => variablesWithFallback.containsKey(varName)),
      'Some variables are missing for key $key: ${_getVariables(currentText).toSet().difference(variablesWithFallback.keys.toSet())}',
    );

    return _applyVariables(currentText, variablesWithFallback);
  }
}
