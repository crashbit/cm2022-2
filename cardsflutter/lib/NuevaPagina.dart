import 'package:flutter/material.dart';

class NuevaPagina extends StatefulWidget {
  int? numero;

  NuevaPagina({Key? key, required this.numero}) : super(key: key);

  @override
  State<NuevaPagina> createState() => _NuevaPaginaState();
}

class _NuevaPaginaState extends State<NuevaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nueva Pagina ${widget.numero}")),
      body: Center(
          child: Column(
        children: [
          Text("hola ${widget.numero}", style: TextStyle(fontSize: 40)),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, widget.numero);
            },
            child: Text("Regresar"),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.numero = widget.numero! + 1;
          });
        },
        child: Icon(Icons.access_alarms),
      ),
    );
  }
}
