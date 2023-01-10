class DittoConfigs {
  factory DittoConfigs([DittoConfigData? data]) {
    if (_instance == null) {
      assert(data != null, 'For first initialization give DittoConfigData');
    }
    return _instance ??= DittoConfigs._(data!);
  }

  DittoConfigs._(DittoConfigData data) {
    _apiKey = data.apiKey;
    _baseUrl = data.baseUrl;
    _projectId = data.projectId;
    initialized = true;
  }

  static DittoConfigs? _instance;

  bool initialized = false;
  String? _apiKey;
  String? _projectId;
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

  String get projectId {
    assert(initialized);
    if (_projectId == null) {
      throw Exception('projectId is not set');
    }
    return _projectId!;
  }
}

class DittoConfigData {
  final String apiKey;
  final Uri baseUrl;
  final String projectId;
  final bool forceRefreshOnReload;

  DittoConfigData.base({
    required this.apiKey,
    required this.projectId,
    required this.forceRefreshOnReload,
  }) : baseUrl = Uri.parse('https://api.dittowords.com');

  DittoConfigData({
    required this.apiKey,
    required this.baseUrl,
    required this.projectId,
    required this.forceRefreshOnReload,
  });
}
