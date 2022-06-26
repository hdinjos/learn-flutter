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
                child: const Text("Radio",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const CheckboxInput(),
            ])));
  }
}

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  State<CheckboxInput> createState() => _CheckboxInput();
}

class _CheckboxInput extends State<CheckboxInput> {
  bool _check = false;

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$_check selected"),
      duration: const Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
          value: _check,
          onChanged: (bool? value) {
            setState(() {
              _check = value ?? false;
            });
          }),
      title: const Text("User Agreement"),
    );
  }
}
