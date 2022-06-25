import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "TextField",
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const Screen());
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Input")),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: const Text("Switch",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const SwitchInput(),
            ])));
  }
}

class SwitchInput extends StatefulWidget {
  const SwitchInput({Key? key}) : super(key: key);

  @override
  State<SwitchInput> createState() => _SwitchInput();
}

class _SwitchInput extends State<SwitchInput> {
  bool _onFire = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: _onFire,
          onChanged: (value) {
            setState(() {
              _onFire = value;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(_onFire ? "Open the door" : "Close the door"),
                duration: const Duration(seconds: 1),
              ));
            });
          },
        ),
        Text(_onFire ? "Availble Text" : "No Text"),
      ],
    );
  }
}
