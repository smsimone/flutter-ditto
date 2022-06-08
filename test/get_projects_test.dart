import 'package:ditto_sdk/api/api_connection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_setup.dart';

void main() {
  setUp(setup);

  test('Tries to get projects', () async {
    final projectNames = await ApiConnection().getProjectNames();
    expect(projectNames.length, greaterThan(0));

    final projectList =
        await ApiConnection().getProjects([projectNames.first.id]);
    expect(projectList.projects.length, greaterThan(0));
  });
}
