import 'package:firstflutter/Detalle.dart';
import 'package:flutter/material.dart';

class Ejemplo3 extends StatelessWidget {
  const Ejemplo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejemplo 3"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (contexto, index) {
          print("tarjeta $index");
          return creaCard("Hola $index", index, context);
        },
      ),
    );
  }

  Widget creaCard(String title, int index, BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          print("Click en tarjeta $index");
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Detalle()));
        },
        leading: Icon(Icons.flight_land),
        trailing: Icon(Icons.flight_takeoff),
        subtitle: Text("Subtitle"),
      ),
    );
  }
} // Fin de clase
