import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_data.freezed.dart';

/// Class that contains Ditto configs
@freezed
class DittoConfigData with _$DittoConfigData {
  /// Class that contains Ditto configs
  factory DittoConfigData({
    required String apiKey,
    required String projectId,
    @Assert("Uri.tryParse(baseUrl) != null")
    @Default('https://api.dittowords.com')
        String baseUrl,
  }) = _DittoConfigData;
}
