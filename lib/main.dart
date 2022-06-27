import 'package:flutter/material.dart';
import 'package:aha_app/screens/tour_detail.dart';

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
