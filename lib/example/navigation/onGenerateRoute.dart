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
        },
        onGenerateRoute: (settings) {
          if (settings.name == SecondScreen.routeName) {
            final arg = settings.arguments as ArgumentScreen;

            return MaterialPageRoute(builder: (BuildContext context) {
              return SecondScreen(
                msg: arg.msg,
                title: arg.title,
              );
            });
          }
          assert(false, "Need to Implements ${settings.name}");
          return null;
        });
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
  final String msg;
  final String title;
  static const routeName = "/screen-two";

  const SecondScreen({super.key, required this.msg, required this.title});

  @override
  Widget build(BuildContext context) {
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
              Text("title: $title"),
              Text("message: $msg"),
            ]),
      ),
    );
  }
}
