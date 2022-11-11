import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingController = TextEditingController();
  String name = "";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple App'),
        ),
        body: Center(
          child: Column(
            children: [
              const Text("Enter your text below"),
              TextField(
                controller: textEditingController,
              ),
              ElevatedButton(onPressed: onPressed, child: const Text("Press Me!")),
              Text(name)
            ],
          ),
        ),
      ),
    );
  }

  void onPressed() {
    setState(() {
      name = textEditingController.text;
    });
    print(name);

  }
}
