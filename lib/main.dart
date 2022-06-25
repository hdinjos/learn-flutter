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
                  child: const Text("Elevated Button",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // print("standart press");
                      },
                      onLongPress: () {
                        // print("Long press!");
                      },
                      child:
                          const Text("Enable", style: TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ElevatedButton(
                      onPressed: null,
                      child: Text("Disable", style: TextStyle(fontSize: 20)),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Text Button",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Woke Gan"),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Outline Button",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Outlined Button"),
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Button Icon",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                IconButton(
                    onPressed: () {},
                    tooltip: "Add alarm",
                    icon: const Icon(Icons.add_alarm)),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Dropdown Button",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                const DropDownBtn(),
              ]),
        ));
  }
}

class DropDownBtn extends StatefulWidget {
  const DropDownBtn({Key? key}) : super(key: key);

  @override
  State<DropDownBtn> createState() => _DropDownBtn();
}

class _DropDownBtn extends State<DropDownBtn> {
  String? dropdownVal;
  List<String> menu = ["One", "Two", "Three"];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownVal,
      hint: const Text("Select a number"),
      onChanged: (String? newValue) {
        setState(() {
          dropdownVal = newValue;
        });
      },
      items: menu.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
