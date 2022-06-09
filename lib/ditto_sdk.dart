library ditto_sdk;

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

export 'src/delegates/localizations_delegate.dart';
export 'src/ditto_context.dart';
export 'src/extensions/string_extension.dart';
export 'src/store/ditto_store.dart';

List<LocalizationsDelegate<dynamic>> get defaultDelegates => [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];
