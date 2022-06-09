abstract class DittoException implements Exception {
  DittoException._();

  String get message;

  @override
  String toString() => '$runtimeType: $message';
}

class MissingLocalizationException extends DittoException {
  MissingLocalizationException(this.projectId) : super._();
  final String projectId;
  @override
  String get message => 'Missing localizations for project $projectId';
}
