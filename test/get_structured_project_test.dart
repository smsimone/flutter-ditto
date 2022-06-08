import 'dart:convert';

import 'package:ditto_sdk/api/api_connection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_setup.dart';

void main() {
  setUp(setup);

  test('Fetch structured data for a project', () async {
    final projectNames = await ApiConnection().getProjectNames();
    expect(projectNames.length, greaterThan(0));

    final texts =
        await ApiConnection().getStructuredTexts(projectNames.first.id);

    expect(texts, isNotNull);
    expect(texts, isNotEmpty);
    debugPrint(jsonEncode(texts!.map((e) => e.toJson()).toList()));
  });
}
