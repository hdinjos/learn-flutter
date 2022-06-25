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
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const Screen());
  }
}

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Text Field")),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: const Text("Text Field OnChange and State",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const StateInput(),
              const SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Text Field With Controller",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const ControllerInput()
            ])));
  }
}

class StateInput extends StatefulWidget {
  const StateInput({Key? key}) : super(key: key);

  @override
  State<StateInput> createState() => _StateInput();
}

class _StateInput extends State<StateInput> {
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

class ControllerInput extends StatefulWidget {
  const ControllerInput({Key? key}) : super(key: key);

  @override
  State<ControllerInput> createState() => _ControllerInput();
}

class _ControllerInput extends State<ControllerInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
            controller: _controller,
            decoration: const InputDecoration(label: Text("Input"))),
        ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      title: const Text("Alert"),
                      content: Text("Halo ${_controller.text}"));
                });
          },
          child: const Text("Check"),
        ),
      ],
    );
  }
}
