import 'package:flutter/material.dart';

class HolaMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola mundo"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Otro hola mundo",
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
      ),
      drawer: Container(color: Colors.brown),
    );
  }
}
