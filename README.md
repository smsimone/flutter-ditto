
[![wakatime](https://wakatime.com/badge/user/6de661cc-aaf6-48d1-b19c-3b8aa8990b73/project/e121e3ca-b7f1-4bf2-a1f7-25c659090e38.svg)](https://wakatime.com/badge/user/6de661cc-aaf6-48d1-b19c-3b8aa8990b73/project/e121e3ca-b7f1-4bf2-a1f7-25c659090e38)

# Flutter_ditto

This packages aims to provide a simple integration with Dittowords localizations like it's done on React by [ditto-react](https://www.npmjs.com/package/ditto-react).

> Like my work?
> 
> [!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/smsimone)


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
/// If you want to hide a variable, use `null`
'variable_key'.translate({'var_name': null})

/// For a translation with plurals
'plural_key'.translate({'var_name': 'var_value'}, 2)
```
