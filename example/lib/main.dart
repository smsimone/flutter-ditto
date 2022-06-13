import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ditto/api/api_exports.dart';
import 'package:flutter_ditto/flutter_ditto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DittoStore().initialize(
    DittoConfigData.base(
      projectId: '62a1ba584f31acbe34ad13c6',
      apiKey:
          'a7fbb013-7345-42ca-a86b-3899fe628b99.d37f7501d55a71428bf581eb1ba3ff3b8e0ad1ef',
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
