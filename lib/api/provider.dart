import 'dart:convert';

import 'package:ditto_sdk/configs/ditto_configs.dart';
import 'package:ditto_sdk/models/project.dart';
import 'package:ditto_sdk/models/project_names.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

part 'project_by_id.dart';
part 'project_names.dart';
part 'projects.dart';

class _DittoProvider {
  /// Singleton that handles ditto rest calls
  factory _DittoProvider() => _instance;
  _DittoProvider._();
  static final _instance = _DittoProvider._();

  late final Client _client;

  void initialize() {
    _client = Client();
  }

  Future<Response> get(String path) async {
    final urlPath =
        '${DittoConfigs().baseUrl.normalizePath().toString()}/$path';

    debugPrint('[DittoProvider-GET] $path');

    final response = await _client.get(
      Uri.parse(urlPath),
      headers: {'Authorization': 'token ${DittoConfigs().apiKey}'},
    );

    debugPrint(
        '[DittoProvider-GET] $path - ${response.statusCode} - ${response.body}');

    return response;
  }
}

final provider = _DittoProvider();
