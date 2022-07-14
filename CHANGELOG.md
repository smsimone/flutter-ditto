## 0.0.3+1

- Now you can translate texts by using the `id` field or the `component_api_id` field, if it's a component
- You can change the app's locale by calling `DittoMaterialApp.setLocale()` or `DittoCupertinoApp.setLocale()`

## 0.0.2+1

- **BREAKING CHANGES**
  - Removed named parameter `configs` from `DittoStore().initialize()` to make it a positional parameter
  - Renamed `ditto_context.dart` in `ditto_material_app.dart`
  - Replaced positional parameter in `translate()` with the named parameter `variables`
- Added named parameters to `DittoContext` to match `MaterialApp` widget
- Added `DittoCupertinoApp` widget which wraps `CupertinoApp`
- Added named parameter `count` into `translate()` for the plural translation

## 0.0.1+1

- Connect your app to [ditto](https://dittowords.com) and download remote localizations
- Automatically updates the localizations and saves them in cache
- Simple string and strings with variables translations
