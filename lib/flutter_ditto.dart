library flutter_ditto;

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

export 'src/delegates/localizations_delegate.dart';
export 'src/extensions/string_extension.dart';
export 'src/store/ditto_store.dart';
export 'src/widgets/ditto_cupertino_app.dart';
export 'src/widgets/ditto_material_app.dart';
export 'src/widgets/ditto_text.dart';

List<LocalizationsDelegate<dynamic>> get defaultDelegates => [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ];
