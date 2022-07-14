import 'package:flutter/material.dart';
import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/flutter_ditto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DittoStore().initialize(
    DittoConfigData.base(
      projectId: '<YOUR-PROJECT-ID>',
      apiKey: '<YOUR-API-KEY>',
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DittoMaterialApp(
      title: 'Ditto test',
      fallbackLocale: const Locale('en'),
      home: const MyHomePage(),
      loadingPlaceholder: Container(
        color: Theme.of(context).primaryColor,
        child: const Center(
          child: CircularProgressIndicator(color: Colors.white),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _clickedNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pages.homepage.title'.translate()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _clickedNotifier.value += 1,
        child: const Icon(Icons.add),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text('pages.homepage.subtitle'.translate()),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: ValueListenableBuilder<int>(
                  valueListenable: _clickedNotifier,
                  builder: (context, value, _) => Text(
                    'pages.homepage.body.counter'.translate(
                      count: value,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
