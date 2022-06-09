import 'package:flutter_ditto/api/api_exports.dart';
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

    final response = await _client.get(
      uri,
      headers: {'Authorization': 'token ${DittoConfigs().apiKey}'},
    );

    return response;
  }
}
