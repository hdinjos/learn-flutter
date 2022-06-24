import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "My Jogja", home: TourDetail());
  }
}

class TourDetail extends StatelessWidget {
  const TourDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Detail")),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 16),
            child: const Text("Jalan Malioboro",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.date_range_outlined),
                      SizedBox(height: 8.0),
                      Text("Open Everyday")
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.more_time_rounded),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text("24 Hours")
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.currency_exchange_rounded),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text("Free")
                    ],
                  )
                ],
              )),
          Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              child: const Text(
                "Jalan Malioboro is a major shopping street in Yogyakarta, Indonesia; the name is also used more generally for the neighborhood around the street. It lies north–south axis in the line between Yogyakarta Kraton and Mount Merapi. This is in itself is significant to many of the local population, the north–south orientation between the palace and the volcano being of importance.",
                textAlign: TextAlign.center,
              ))
        ],
      )),
    );
  }
}
