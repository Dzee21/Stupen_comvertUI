import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void increaseNumber() => setState(() => _counter += 1);

  void decreaseNumber() {
    if (_counter == 0) {
      return;
    }

    setState(() => _counter -= 1);
  }

  void resetNumber() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Slebew"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _counter.toString(),
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => increaseNumber(),
                    child: const Text("Tambah Angka"),
                  ),
                  ElevatedButton(
                    onPressed: () => decreaseNumber(),
                    child: const Text("Kurangi Angka"),
                  ),
                  ElevatedButton(
                    onPressed: () => resetNumber(),
                    child: const Text("Reset Angka"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
