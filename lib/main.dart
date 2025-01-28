import 'package:flutter/material.dart';
import 'package:mental/views/homePage.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final String title = 'mental health';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: HomePage(),
    );
  }
}
