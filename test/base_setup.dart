import 'package:ditto_sdk/src/api_exports.dart';
import 'package:dotenv/dotenv.dart';

void setup() {
  final env = DotEnv();
  env.load();

  assert(env['DITTO_API_TOKEN'] != null);

  DittoConfigs(DittoConfigData.base(env['DITTO_API_TOKEN']!));
}
