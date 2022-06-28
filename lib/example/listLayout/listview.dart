import 'package:flutter/material.dart';
// import 'package:aha_app/screens/tour_detail.dart';

void main() {
  runApp(const MyApp());
}

List<int> numbers = [1, 2, 3, 4];
final List<int> colorCodes = <int>[600, 300, 100, 200];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Jogja",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(title: const Text("List view")),
            body: const ListViewSeparated()));
  }
}

//ListView
class ListViewStandard extends StatelessWidget {
  const ListViewStandard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: numbers.map((int item) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
            color: Colors.grey, border: Border.all(color: Colors.black)),
        child: Center(
            child: Text("$item",
                style: const TextStyle(fontSize: 50.0, color: Colors.white))),
      );
    }).toList());
  }
}

//ListViewBuilder
class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text("${numbers[index]}")));
        });
  }
}

//ListViewSeparated
class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${numbers[index]}')),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 50.0,
          );
        });
  }
}
