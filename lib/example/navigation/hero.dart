import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Jogja",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(title: const Text("Navigations")),
            body: const ListScreen()));
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  //### ONLY CAN ACCESS WITH IN CLASS ###
  // Widget _blueRectangle(Size size) {
  //   return Container(
  //       width: size.width, height: size.height, color: Colors.blue);
  // }

  // void _gotoDetailScreen(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute<void>(
  //       builder: (BuildContext context) => Scaffold(
  //           appBar: AppBar(
  //             title: const Text("Detail Screen"),
  //           ),
  //           body: Center(
  //             child: Hero(
  //               tag: "hero-rectangle",
  //               child: _blueRectangle(const Size(200, 200)),
  //             ),
  //           ))));
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        ListTile(
          leading: Hero(
              tag: "hero-rectangle", child: _blueRectangle(const Size(20, 20))),
          onTap: () => _gotoDetailScreen(context),
          title:
              const Text("Tap on the icon to view hero animation transition."),
        )
      ],
    );
  }
}

//## HAS ACCESS FOR OUTER CLASS ##
Widget _blueRectangle(Size size) {
  return Container(width: size.width, height: size.height, color: Colors.blue);
}

void _gotoDetailScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            title: const Text("Detail Screen"),
          ),
          body: Center(
            child: Hero(
              tag: "hero-rectangle",
              child: _blueRectangle(const Size(200, 200)),
            ),
          ))));
}
