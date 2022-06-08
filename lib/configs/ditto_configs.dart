class DittoConfigs {
  factory DittoConfigs() => _instance;
  DittoConfigs._();
  static final _instance = DittoConfigs._();

  String? _apiKey;
  Uri? _baseUrl;

  set apiKey(String apiKey) => _apiKey = apiKey;
  set baseUrl(Uri baseUrl) => _baseUrl = baseUrl;

  Uri get baseUrl {
    if (_baseUrl == null) {
      throw Exception('baseUrl is not set');
    }
    return _baseUrl!;
  }

  String get apiKey {
    if (_apiKey == null) {
      throw Exception('apiKey is not set');
    }
    return _apiKey!;
  }
}
