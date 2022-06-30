import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class ArgumentScreen {
  final String msg;
  final String title;

  ArgumentScreen(this.msg, this.title);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Jogja",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstScreen(),
        SecondScreen.routeName: (context) => const SecondScreen()
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Screen One")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("This is screen one",
                    style: TextStyle(fontSize: 20.0)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SecondScreen.routeName,
                        arguments: ArgumentScreen(
                            "This is msg from class ArgumentScreen",
                            "Argument Scrren Title"));
                  },
                  child: const Text("To Screen Two"),
                )
              ]),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  static const routeName = "/screen-two";

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as ArgumentScreen;

    return Scaffold(
      // appBar: AppBar(title: const Text("Screen Two")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("This is screen two",
                  style: TextStyle(fontSize: 20.0)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Go Back")),
              Text("title: ${arg.title}"),
              Text("message: ${arg.msg}"),
            ]),
      ),
    );
  }
}
