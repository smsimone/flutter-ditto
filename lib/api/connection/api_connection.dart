import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/api/caching/cache_manager.dart';
import 'package:flutter_ditto/api/exceptions/http_exception.dart';
import 'package:flutter_ditto/api/models/models.dart';

const _textsKey = 'ditto_texts';

class ApiConnection {
  factory ApiConnection() => _instance;
  ApiConnection._();
  static final _instance = ApiConnection._();

  final _provider = DittoProvider();

  /// Returns the list of the [Text] objects contained on Ditto
  ///
  /// Throws [FailedFetchException] if the request fails
  Future<List<Text>?> getStructuredTexts(
    String projectId, {
    required String apiKey,
    required String baseUrl,
    bool acceptCache = true,
  }) async {
    if (acceptCache) {
      final data = await DittoCacheManager.instance().getFile(_textsKey);
      if (data != null) {
        debugPrint('Fetched ditto resources from cache');
        getStructuredTexts(
          projectId,
          apiKey: apiKey,
          baseUrl: baseUrl,
          acceptCache: false,
        );
        return (data['data'] as List).map((m) => Text.fromJson(m)).toList();
      }
    }

    final response = await _provider.get(
      baseUrl: baseUrl,
      apiKey: apiKey,
      path: '/projects/$projectId',
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

      DittoCacheManager.instance().store(
        _textsKey,
        {'data': newData},
      );

      return newData;
    }
    throw FailedFetchException(response.body);
  }

  /// Fetches the variants enabled on Ditto
  ///
  /// throws [FailedFetchException] if the request fails
  Future<List<Language>> getVariants({
    required String baseUrl,
    required String apiKey,
  }) async {
    final response = await _provider.get(
      baseUrl: baseUrl,
      apiKey: apiKey,
      path: '/variants',
    );
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((d) => Language.fromJson(d))
          .toList();
    }
    throw FailedFetchException(response.body);
  }
}
