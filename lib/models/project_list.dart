import 'package:ditto_sdk/models/project.dart';

class ProjectList {
  ProjectList._(this.projects);

  factory ProjectList.fromJson(Map<String, dynamic> json) {
    final data = json['projects'];
    assert(data is Map);
    final projects = (data as Map).entries.map((entry) {
      final projectJson = (entry.value as Map)
        ..putIfAbsent('projectName', () => entry.key);
      return Project.fromJson(projectJson as Map<String, dynamic>);
    });

    return ProjectList._(projects.toList());
  }

  final List<Project> projects;
}
