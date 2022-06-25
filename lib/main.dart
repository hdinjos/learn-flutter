import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Button",
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: const Screen());
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List Button")),
        body: Container(
            // alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: const Text("Text Field",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const StandardInput()
                ])));
  }
}

class StandardInput extends StatefulWidget {
  const StandardInput({Key? key}) : super(key: key);

  @override
  State<StandardInput> createState() => _StandardInput();
}

class _StandardInput extends State<StandardInput> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: "Some Text"),
          onChanged: (value) {
            setState(() {
              _text = value;
            });
          },
        ),
        Text("This is : $_text")
      ],
    );
  }
}
