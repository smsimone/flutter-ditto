import 'package:flutter/foundation.dart';
import 'package:flutter_ditto/api/exceptions/http_exception.dart';
import 'package:http/http.dart';

class DittoProvider {
  String _sanitizeDomain(String baseUrl) {
    final uri = Uri.parse(baseUrl);
    return uri.authority;
  }

  Future<Response> get({
    required String baseUrl,
    required String path,
    required String apiKey,
    Map<String, dynamic>? queryParams,
  }) async {
    final uri = Uri.https(
      _sanitizeDomain(baseUrl),
      path,
      queryParams,
    );

    final response =
        await Client().get(uri, headers: {'Authorization': 'token $apiKey'});

    if (response.statusCode != 200) {
      FlutterError.presentError(
        FlutterErrorDetails(
          exception: FailedFetchException(response.body),
          stack: StackTrace.current,
        ),
      );
    }

    return response;
  }
}
