import 'dart:convert';

import 'package:ditto_sdk/api/api_exports.dart';
import 'package:ditto_sdk/api/models/models.dart';

class ApiConnection {
  factory ApiConnection() => _instance;
  ApiConnection._();
  static final _instance = ApiConnection._();

  final _provider = DittoProvider();

  Future<List<Text>?> getStructuredTexts(String? projectId) async {
    projectId ??= DittoConfigs().projectId;
    final response = await _provider.get(
      '/projects/$projectId',
      queryParams: {'format': 'structured'},
    );
    if (response.statusCode == 200) {
      final json = (jsonDecode(response.body) as Map<String, dynamic>);
      return json.entries.map((e) {
        final data = (e.value as Map<String, dynamic>)
          ..putIfAbsent('key', () => e.key);
        return Text.fromJson(data);
      }).toList();
    }
    return null;
  }

  Future<List<Language>> getVariants() async {
    final response = await _provider.get('/variants');
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((d) => Language.fromJson(d))
          .toList();
    }
    return [];
  }
}
