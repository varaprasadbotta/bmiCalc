import 'package:bmi_calc/pages/Homepage.dart';
import 'package:bmi_calc/pages/ResultPage.dart';
import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
