import 'package:flutter/material.dart';
import 'package:theming_data/home_language.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Knight and Day',
      home: HomeLanguage(),
    );
  }
}