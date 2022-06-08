import 'package:ditto_sdk/configs/ditto_configs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class DittoProvider {
  /// Singleton that handles ditto rest calls
  factory DittoProvider() => _instance;
  DittoProvider._() {
    _client = Client();
  }
  static final _instance = DittoProvider._();

  late final Client _client;

  Future<Response> get(String path, {Map<String, dynamic>? queryParams}) async {
    if (!path.startsWith('/')) {
      path = '/$path';
    }

    final uri = Uri.https(
      DittoConfigs().baseUrl,
      path,
      queryParams,
    );

    debugPrint('[DittoProvider-GET] $path');

    final response = await _client.get(
      uri,
      headers: {'Authorization': 'token ${DittoConfigs().apiKey}'},
    );

    debugPrint(
        '[DittoProvider-GET] $path - ${response.statusCode} - ${response.body}');

    return response;
  }
}
