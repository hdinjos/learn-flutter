import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

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
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(children: [
            // Center(
            //   child: SvgPicture.asset(
            //     "assets/images/home.svg",
            //     height: 100.0,
            //     width: 100.0,
            //   ),
            // ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 5),
              margin: const EdgeInsets.only(bottom: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text("Samsung Galaxy J6",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text(
                  "Galaxy J6 hadir dengan desain premium, dengan dukungan layar 5.6\" HD+ SuperAMOLED Infinity Display dengan resolusi 720 x 1480 warnanya hidup dan kontrasnya sangat baik. Ini adalah fitur unggulan yang biasanya tidak di dapat pada ponsel sekelas ini. "),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star)
                      ],
                    ),
                    const Text("178 Reviews")
                  ]),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Icon(
                          Icons.access_alarm,
                          color: Colors.green,
                        ),
                        Text("PREP:"),
                        Text("25 Min"),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                          Icons.access_alarm,
                          color: Colors.green,
                        ),
                        Text("PREP:"),
                        Text("25 Min"),
                      ],
                    ),
                    Column(
                      children: const <Widget>[
                        Icon(
                          Icons.access_alarm,
                          color: Colors.green,
                        ),
                        Text("PREP:"),
                        Text("25 Min"),
                      ],
                    )
                  ]),
            )
            // Image.asset("assets/images/utube.png"),
          ]),
        ));
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
