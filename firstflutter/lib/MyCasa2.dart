import 'package:flutter/material.dart';

class MyCasa2 extends StatelessWidget {
  const MyCasa2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Casa 2")),
      body: ListView(
        children: [
          Text("uno"),
          Text("dos"),
          Text("tres"),
          Text("cuatro"),
          Text("cinco"),
        ],
      ),
    );
  }
}
