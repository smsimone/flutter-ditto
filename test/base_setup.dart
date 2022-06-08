import 'package:ditto_sdk/api/api_exports.dart';
import 'package:dotenv/dotenv.dart';

void setup() {
  final env = DotEnv();
  env.load();

  assert(env['DITTO_API_TOKEN'] != null);

  DittoConfigs(
    DittoConfigData.base(apiKey: env['DITTO_API_TOKEN']!, projectId: ''),
  );
}
