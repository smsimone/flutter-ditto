class DittoConfigs {
  factory DittoConfigs([DittoConfigData? data]) {
    if (_instance == null) {
      assert(data != null, 'For first initialization pass DittoConfigData');
    }
    return _instance ??= DittoConfigs._(data!);
  }

  DittoConfigs._(DittoConfigData data) {
    _apiKey = data.apiKey;
    _baseUrl = data.baseUrl;
    initialized = true;
  }

  static DittoConfigs? _instance;

  bool initialized = false;
  String? _apiKey;
  Uri? _baseUrl;

  String get baseUrl {
    assert(initialized);
    if (_baseUrl == null) {
      throw Exception('baseUrl is not set');
    }
    return _baseUrl!.authority;
  }

  String get apiKey {
    assert(initialized);
    if (_apiKey == null) {
      throw Exception('apiKey is not set');
    }
    return _apiKey!;
  }
}

class DittoConfigData {
  final String apiKey;
  final Uri baseUrl;

  DittoConfigData.base(this.apiKey)
      : baseUrl = Uri.parse('https://api.dittowords.com');

  DittoConfigData({required this.apiKey, required this.baseUrl});
}
