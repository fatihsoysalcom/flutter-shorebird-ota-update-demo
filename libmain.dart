import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shorebird OTA Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  // These values would typically be updated via Shorebird patches without an app store submission.
  final String currentMessage = "Hello from the initial app version!";
  final String appVersion = "1.0.0"; // This represents the base app version
  final String patchVersion = "Patch 1"; // This represents the current OTA patch level

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shorebird OTA Update Demo'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'This app demonstrates Over-the-Air updates with Shorebird.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              // This text content is a prime candidate for an OTA update via Shorebird.
              Text(
                currentMessage, 
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              const SizedBox(height: 30),
              Text(
                'Base App Version: $appVersion',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              // The patch version string can also be updated through a Shorebird patch.
              Text(
                'Current OTA Patch: $patchVersion', 
                style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 40),
              const Text(
                'To see an update, build and deploy a patch using Shorebird CLI, then restart this app.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}