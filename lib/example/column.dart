import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter One",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
            ),
            title: const Text("Main App"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              )
            ]),
        body: Column(children: const [
          UpperText(
            text: "A title",
          ),
          Text("Tes title"),
          // UpperText(text: "A Title"),
        ]));
  }
}

class UpperText extends StatelessWidget {
  final String text;
  const UpperText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}
