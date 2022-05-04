import 'package:flutter/material.dart';

class Ejemplo2 extends StatelessWidget {
  const Ejemplo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ejemplo2 ")),
        drawer: Drawer(
          child: Container(color: Colors.blueGrey),
        ),
        body: Container(
            color: Colors.amberAccent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      color: Colors.redAccent,
                      child: Center(
                        child:
                            Text("Hola mundo", style: TextStyle(fontSize: 40)),
                      ),
                    ),
                  )),
            )));
  }
}
