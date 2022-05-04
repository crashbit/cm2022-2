import 'package:firstflutter/Ejemplo2.dart';
import 'package:firstflutter/Ejemplo3.dart';
import 'package:firstflutter/MyCasa.dart';
import 'package:firstflutter/MyCasa2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: MyCasa2(),
      home: Ejemplo3(),
    );
  }
}
