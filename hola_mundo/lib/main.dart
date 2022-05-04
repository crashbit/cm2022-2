import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hola_mundo/HolaMundo.dart';

void main() {
  print("hola mundo");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HolaMundo(),
    );
  }
}
