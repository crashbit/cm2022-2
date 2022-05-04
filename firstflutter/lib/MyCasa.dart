import 'package:flutter/material.dart';

class MyCasa extends StatelessWidget {
  //const MyCasa({Key? key}) : super(key: key);

  List<String> lista = ["uno", "dos", "tres"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola mundo")),
      body: Center(
          child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (BuildContext context, int index) {
          print(lista[index]);
          return Text("$lista[index]");
        },
      )),
    );
  }
}
