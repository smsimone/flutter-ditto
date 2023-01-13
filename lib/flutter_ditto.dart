library flutter_ditto;

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

export 'src/extensions/string_extensions.dart';
export 'src/widgets/inherited_ditto.dart';

List<LocalizationsDelegate<dynamic>> get defaultDelegates => [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];
