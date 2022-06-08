import 'package:ditto_sdk/api/api_connection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_setup.dart';

void main() {
  setUp(setup);

  test('Tries to get projects names', () async {
    final projects = await ApiConnection().getProjectNames();
    expect(projects.length, greaterThan(0));
    debugPrint('Project names: $projects');
  });
}
