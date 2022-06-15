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
      body: Container(
          // color: Colors.blue,
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
              color: Colors.red,
              // shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(3, 6), blurRadius: 10)
              ]),
          child: const Text("H", style: TextStyle(fontSize: 30))),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
