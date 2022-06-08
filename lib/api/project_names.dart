part of 'provider.dart';

Future<List<ProjectNames>> getProjectNames() async {
  final response = await provider.get('/project-names');

  if (response.statusCode == 200) {
    return (jsonDecode(response.body) as List<dynamic>)
        .map((d) => ProjectNames.fromJson(d))
        .toList();
  }

  return [];
}
