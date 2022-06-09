abstract class HttpException implements Exception {
  HttpException._();

  String get message;

  @override
  String toString() => '$runtimeType: $message';
}

class FailedFetchException extends HttpException {
  @override
  final String message;

  FailedFetchException(this.message) : super._();
}
