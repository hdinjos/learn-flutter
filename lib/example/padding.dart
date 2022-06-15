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
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text("HALO GAIS"),
      ),
    );
  }
}
