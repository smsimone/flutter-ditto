import 'package:ditto_sdk/api/api_connection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_setup.dart';

void main() {
  setUp(setup);

  test('Load a single project', () async {
    final projects = await ApiConnection().getProjectNames();
    expect(projects.length, greaterThan(0));

    final project = await ApiConnection().getProjectById(projects.first.id);
    expect(project, isNotNull);
  });
}
