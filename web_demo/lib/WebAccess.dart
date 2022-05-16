import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WebAccess extends StatefulWidget {
  WebAccess({Key? key}) : super(key: key);

  @override
  State<WebAccess> createState() => _WebAccessState();
}

class _WebAccessState extends State<WebAccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP"),
      ),
      body: ElevatedButton(
        child: Text("Go!!!"),
        onPressed: () {
          getData();
        },
      ),
    );
  }

  Future<String> getData() async {
    final String conector = "www.googleapis.com";
    final String ruta = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(conector, ruta);
    print(url);
    var response = http.get(url);
    print(response.then((value) {
      print(value.body);
    }));
    return response.toString();
  }
}
