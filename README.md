# Flutter_ditto

This packages aims to provide a simple integration with Dittowords localizations like it's done on React by [ditto-react](https://www.npmjs.com/package/ditto-react).

## TODOS

- [x] OTA updates for the translations
- [ ] Translations with plurals

## Quick start

To integrate Ditto inside your app you simply have to replace the current `MaterialApp` with `DittoMaterialApp`.

### Separated initialization

You can initialize `DittoStore` separately from `DittoMaterialApp` like

```dart
Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

    await DittoStore().initialize(
        configs: DittoConfigData.base(
        projectId: '<YOUR_PROJECT_ID>',
        apiKey: '<YOUR_API_KEY>',
        ),
    );

    runApp(const MyApp());
}

// ...

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DittoMaterialApp(
      title: 'Ditto test',
      fallbackLocale: const Locale('en'),
      home: const MyHomePage(),
    );
  }
}

```

### Integrated initialization

Here you can let the `DittoMaterialApp` component handle the `DittoStore` initialization simply by giving it the `DittoConfigData`

```dart
//...

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DittoMaterialApp(
      title: 'Ditto test',
      fallbackLocale: const Locale('en'),
      home: const MyHomePage(),
      configData: DittoConfigData.base(
        projectId: '<YOUR_PROJECT_ID>',
        apiKey: '<YOUR_API_KEY>',
      ),
      loadingPlaceholder: Container(
        color: Theme.of(context).primaryColor,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      ),
    );
  }
}
```

## Translations

As you wrapped your app with `DittoMaterialApp`, you can now translate your texts by using the `String.translate()` extension.

```dart
/// For a simple translation
'simple_key'.translate()

/// For a translation with a variable
'variable_key'.translate({'var_name': 'var_value'})
```
