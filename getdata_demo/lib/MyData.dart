import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyData extends StatelessWidget {
  const MyData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My data")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          getData();
          return Text("Fin del mensaje");
        },
      ),
    );
  }

  Future<String> getData() async {
    var urlString = "https://pokefanaticos.com/pokedex/pokedex-listar/";
    var encodedURI = Uri.encodeFull(urlString);
    var uri = Uri.parse(encodedURI);
    final response = await http.get(uri);
    final document = response.body;
    print(document);
    return document;
  }
}
