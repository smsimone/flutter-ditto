import 'dart:convert';

import 'package:ditto_sdk/api/api_exports.dart';
import 'package:ditto_sdk/api/models/language.dart';
import 'package:ditto_sdk/api/models/models.dart';

class ApiConnection {
  factory ApiConnection() => _instance;
  ApiConnection._();
  static final _instance = ApiConnection._();

  final _provider = DittoProvider();

  Future<ProjectList> getProjects(List<String> projectIds) async {
    final response = await _provider.get(
      '/projects',
      queryParams: {'projectIds': projectIds},
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return ProjectList.fromJson(json);
    } else {
      throw Exception('Failed to load projects');
    }
  }

  Future<List<ProjectName>> getProjectNames() async {
    final response = await _provider.get('/project-names');

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((d) => ProjectName.fromJson(d))
          .toList();
    }

    return [];
  }

  Future<Project?> getProjectById(
    String? projectId, {
    String? variant,
    Format? format,
    ProjectStatus? status,
  }) async {
    projectId ??= DittoConfigs().projectId;
    final response = await _provider.get('/projects/$projectId');
    if (response.statusCode == 200) {
      final json =
          (jsonDecode(response.body) as Map<String, dynamic>)['projects'];
      assert(json.entries.length == 1);

      final entry = json.entries.first;

      final projectJson = (entry.value as Map)
        ..putIfAbsent('project_name', () => entry.key);

      return Project.fromJson(projectJson as Map<String, dynamic>);
    }
    return null;
  }

  Future<List<Text>?> getStructuredTexts(String? projectId) async {
    projectId ??= DittoConfigs().projectId;
    final response = await _provider.get(
      '/projects/$projectId',
      queryParams: {'format': 'structured'},
    );
    if (response.statusCode == 200) {
      final json = (jsonDecode(response.body) as Map<String, dynamic>);
      return json.entries.map((e) {
        final data = (e.value as Map<String, dynamic>)
          ..putIfAbsent('key', () => e.key);
        return Text.fromJson(data);
      }).toList();
    }
    return null;
  }

  Future<List<Language>> getVariants() async {
    final response = await _provider.get('/variants');
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((d) => Language.fromJson(d))
          .toList();
    }
    return [];
  }
}
