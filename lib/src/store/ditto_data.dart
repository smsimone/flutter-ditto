import 'package:ditto_sdk/api/connection/api_connection.dart';
import 'package:ditto_sdk/api/models/models.dart';

/// Class that handles ditto data and its caching
class DittoData {
  late List<Text> _strings;
  var _initialized = false;

  Future<void> fetchData() async {
    final data = await ApiConnection().getStructuredTexts(null);
    assert(
      data != null,
      '''
Before using Ditto, assure you have a project configured with some strings
in it.
''',
    );
    _strings = data!;
    _initialized = true;
  }
}
