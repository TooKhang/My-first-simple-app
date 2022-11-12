import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num1EditingController = TextEditingController();
  TextEditingController num2EditingController = TextEditingController();
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple App'),
        ),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Simple Calculator",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                        controller: num1EditingController,
                        decoration: InputDecoration(
                            hintText: 'First number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        keyboardType: const TextInputType.numberWithOptions()),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: num2EditingController,
                      decoration: InputDecoration(
                          hintText: 'Second number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      keyboardType: const TextInputType.numberWithOptions(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () => {onPressed("+")},
                            child: const Text("+")),
                        ElevatedButton(
                            onPressed: () => {onPressed("-")},
                            child: const Text("-")),
                        ElevatedButton(
                            onPressed: () => {onPressed("x")},
                            child: const Text("x")),
                        ElevatedButton(
                            onPressed: () => {onPressed("/")},
                            child: const Text("/")),
                      ],
                    ),
                    Text("Result " + result.toString())
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void onPressed(String op) {
    setState(() {
      double num1 = double.parse(num1EditingController.text);
      double num2 = double.parse(num2EditingController.text);
      switch (op) {
        case "+":
          result = num1 + num2;
          return;
        case "-":
          result = num1 - num2;
          return;
        case "x":
          result = num1 * num2;
          return;
        case "/":
          result = num1 / num2;
          return;
      }
    });
  }
}
