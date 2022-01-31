import 'package:autiful/Screens/select_language.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Autiful());
}

class Autiful extends StatelessWidget {
  const Autiful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectLanguage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


