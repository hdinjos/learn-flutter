import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final List<Color> colorCodes = <Color>[
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.blue,
  Colors.indigo,
  Colors.purple
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Jogja",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(title: const Text("Expanded & Flexible Widget")),
            body: const BuddleWidget()));
  }
}

class Epand extends StatelessWidget {
  const Epand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: colorCodes.map((Color item) {
        int index = colorCodes.indexOf(item);
        if (index == 3) {
          return Expanded(
            flex: 2,
            child: Container(
              color: item,
            ),
          );
        }
        return Expanded(child: Container(color: item));
      }).toList(),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.teal, border: Border.all(color: Colors.white)),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Expanded",
                style: TextStyle(color: Colors.white, fontSize: 24)),
          )),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.tealAccent, border: Border.all(color: Colors.white)),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text("Flexible",
            style: TextStyle(color: Colors.teal, fontSize: 24)),
      ),
    ));
  }
}

class BuddleWidget extends StatelessWidget {
  const BuddleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Row(
          children: const <Widget>[ExpandedWidget(), FlexibleWidget()],
        ),
        Row(
          children: const <Widget>[ExpandedWidget(), ExpandedWidget()],
        ),
        Row(
          children: const <Widget>[FlexibleWidget(), FlexibleWidget()],
        ),
        Row(
          children: const <Widget>[FlexibleWidget(), ExpandedWidget()],
        )
      ],
    ));
  }
}
