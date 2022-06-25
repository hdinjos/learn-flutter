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
              const RadioInput(),
            ])));
  }
}

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  State<RadioInput> createState() => _RadioInput();
}

class _RadioInput extends State<RadioInput> {
  String _language = "Go";
  final List<String> _languages = ["Javascript", "Dart", "Go"];

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$_language selected"),
      duration: const Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _languages.map<ListTile>((String val) {
        return ListTile(
          leading: Radio(
            value: val,
            groupValue: _language,
            onChanged: (Object? value) {
              setState(() {
                _language = val;
                showSnackBar();
              });
            },
          ),
          title: Text(val),
        );
      }).toList(),
    );
  }
}
