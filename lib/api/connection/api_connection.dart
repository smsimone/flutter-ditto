import 'dart:convert';
import 'dart:developer';

import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/api/models/models.dart';
import 'package:flutter_ditto/src/exceptions/http_exceptions.dart';

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
        log('Fetched ditto resources from cache', name: 'flutter_ditto');
        getStructuredTexts(projectId, false);
        return data;
      }
    }

    final response = await _provider.get(
      '/projects/$projectId',
      queryParams: {'format': 'structured'},
    );
    if (response.statusCode == 200) {
      log('Downloaded updated ditto resources', name: 'flutter_ditto');
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

  Future<List<Text>?> getComponents(
    String? projectId, [
    bool acceptCache = true,
  ]) async {
    projectId ??= DittoConfigs().projectId;

    if (acceptCache) {
      final data = await reloadComponentData();
      if (data != null) {
        log('Fetched ditto resources from cache', name: 'flutter_ditto');
        getComponents(projectId, false);
        return data;
      }
    }

    final response = await _provider.get('/projects/$projectId/components');

    if (response.statusCode == 200) {
      log('Downloaded updated ditto components', name: 'flutter_ditto');
      final json = (jsonDecode(response.body) as Map<String, dynamic>);
      final newData = json.entries.map((e) {
        final data = (e.value as Map<String, dynamic>)
          ..putIfAbsent('key', () => e.key);
        return Text.fromJson(data);
      }).toList();

      saveComponentData(newData);

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
