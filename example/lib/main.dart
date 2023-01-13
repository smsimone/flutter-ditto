import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ditto/api/configs/config_data.dart';
import 'package:flutter_ditto/flutter_ditto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    InheritedDitto(
      config: DittoConfigData(
        projectId: '62b9f3cb14890aa237c7f88c',
        apiKey:
            'd9e4a619-4707-41d5-a595-f19afb88f47d.f641b92a43bca385351bfed2a77fa36f810c96c7',
      ),
      onlyNetworkLabels: true,
      defaultLocale: const Locale('it'),
      loadingWidget: const Center(child: CircularProgressIndicator()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ditto test',
      localizationsDelegates: [
        InheritedDitto.of(context).localizationsDelegate,
        ...defaultDelegates,
      ],
      home: const MyHomePage(),
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
        title: Text('appbar_title'.translate(context)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'hint_email'.translate(context),
              ),
              onChanged: (value) => _emailNotifier.value = value,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'text.hint.password'.translate(context),
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
                        .translate(context, variables: {'email': snap ?? '-'}),
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
                  context,
                  variables: {'count': data.toString()},
                  count: data,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('button.login'.translate(context)),
            ),
          ],
        ),
      ),
    );
  }
}
