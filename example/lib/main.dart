import 'dart:math';

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
  final _emailNotifier = ValueNotifier<String?>(null);
  final _clickedNotifier = ValueNotifier<int>(0);

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
                    'text_inserted_email'
                        .translate(variables: {'email': snap ?? '-'}),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      _clickedNotifier.value = _clickedNotifier.value + 1,
                  child: const Text('+'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _clickedNotifier.value =
                      max(0, _clickedNotifier.value - 1),
                  child: const Text('-'),
                ),
              ],
            ),
            ValueListenableBuilder<int>(
              valueListenable: _clickedNotifier,
              builder: (context, data, _) => Text(
                'text_clicked'.translate(
                  variables: {'count': null},
                  count: data,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
