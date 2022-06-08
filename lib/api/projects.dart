part of 'provider.dart';

Future<List<Project>> getProjects() async {
  final url = '${DittoConfigs().baseUrl.normalizePath().toString()}/projects';
  final response = await provider.get(url);

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    final projects = (json as List).map((e) => Project.fromJson(e)).toList();
    return projects;
  } else {
    throw Exception('Failed to load projects');
  }
}
