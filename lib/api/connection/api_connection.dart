import 'dart:convert';

import 'package:ditto_sdk/api/api_exports.dart';
import 'package:ditto_sdk/api/models/models.dart';
import 'package:ditto_sdk/src/exceptions/http_exceptions.dart';
import 'package:flutter/foundation.dart';

class ApiConnection {
  factory ApiConnection() => _instance;
  ApiConnection._();
  static final _instance = ApiConnection._();

  final _provider = DittoProvider();

  /// Returns the list of the [Text] objects contained on Ditto
  ///
  /// Throws [FailedFetchException] if the request fails
  Future<List<Text>?> getStructuredTexts(
    String? projectId, [
    bool acceptCache = true,
  ]) async {
    projectId ??= DittoConfigs().projectId;

    if (acceptCache) {
      final data = await reloadTextData();
      if (data != null) {
        debugPrint('Fetched ditto resources from cache');
        getStructuredTexts(projectId, false);
        return data;
      }
    }

    final response = await _provider.get(
      '/projects/$projectId',
      queryParams: {'format': 'structured'},
    );
    if (response.statusCode == 200) {
      debugPrint('Downloaded updated ditto resources');
      final json = (jsonDecode(response.body) as Map<String, dynamic>);
      final newData = json.entries.map((e) {
        final data = (e.value as Map<String, dynamic>)
          ..putIfAbsent('key', () => e.key);
        return Text.fromJson(data);
      }).toList();

      saveTextData(newData);

      return newData;
    }
    throw FailedFetchException(response.body);
  }

  /// Fetches the variants enabled on Ditto
  ///
  /// throws [FailedFetchException] if the request fails
  Future<List<Language>> getVariants() async {
    final response = await _provider.get('/variants');
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((d) => Language.fromJson(d))
          .toList();
    }
    throw FailedFetchException(response.body);
  }
}
