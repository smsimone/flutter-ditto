import 'package:ditto_sdk/api/api_exports.dart';
import 'package:ditto_sdk/ditto_sdk.dart';
import 'package:flutter/material.dart';

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
  final _emailNotifier = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar_title'.translate()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'hint_email'.translate(),
              ),
              onChanged: (value) => _emailNotifier.value = value,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'hint_password'.translate(),
              ),
            ),
            ValueListenableBuilder<String?>(
              valueListenable: _emailNotifier,
              builder: (context, snap, _) => Visibility(
                visible: snap != null && snap.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'text_inserted_email'.translate({'email': snap ?? '-'}),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2023),
                );
              },
              child: Text(
                'btn_login'.translate(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
