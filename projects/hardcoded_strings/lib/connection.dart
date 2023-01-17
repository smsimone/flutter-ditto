import 'dart:convert';

import 'package:http/http.dart';

Future<List<String>?> fetchComponents({required String apiKey}) async {
  final client = Client();
  final data = await client.get(
    Uri.parse('https://api.dittowords.com/components?format=flat'),
    headers: {'Authorization': 'token $apiKey'},
  );
  if (data.statusCode != 200) {
    throw Exception(data.body);
  }
  final map = jsonDecode(data.body) as Map<String, dynamic>;
  return map.keys.toList();
}
