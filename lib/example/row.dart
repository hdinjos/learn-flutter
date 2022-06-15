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
        body: Column(children: [
          const Center(
            child: UpperText(
              text: "Space Evenly",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          ),
          const Center(
            child: UpperText(
              text: "Space Around",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          ),
          const Center(
            child: UpperText(
              text: "Space Between",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          ),
          const Center(
            child: UpperText(
              text: "Start",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          ),
          const Center(
            child: UpperText(
              text: "Center",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          ),
          const Center(
            child: UpperText(
              text: "Space End",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.add_a_photo),
              Icon(Icons.airline_stops),
              Icon(Icons.add)
            ],
          )
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
      style: const TextStyle(fontSize: 20),
    );
  }
}
