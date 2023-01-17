import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:hardcoded_strings/connection.dart';

const keysFilename = 'ditto_keys.json';
const helpFlag = 'help';
const apiKeyFlag = 'apiKey';
const projectFlag = 'project';

Future<void> main(List<String> args) async {
  final parser = ArgParser();
  parser
    ..addFlag(helpFlag, abbr: 'h', help: 'Usage help', negatable: false)
    ..addOption(
      apiKeyFlag,
      help: 'Specifies Ditto api key (required)',
      abbr: 'a',
    )
    ..addOption(
      projectFlag,
      help: 'Specifies the project id',
      abbr: 'p',
    );

  final results = parser.parse(args);

  if (results[helpFlag]) {
    stdout.writeln(parser.usage);
    exit(0);
  }

  if (results[apiKeyFlag] == null) {
    stderr.writeln('Missing api key');
    stdout.writeln(parser.usage);
    exit(0);
  }

  final data = await fetchComponents(apiKey: results[apiKeyFlag]!)
      .onError((error, stackTrace) {
    stderr.writeln('Something went wrong: $error');
    return null;
  });

  if (data == null) {
    stderr.writeln('Failed to fetch Ditto components');
    exit(1);
  }

  final file = File(keysFilename);
  if (file.existsSync()) file.deleteSync();
  file.createSync();

  file.writeAsStringSync(jsonEncode(data));
  exit(0);
}
