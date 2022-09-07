import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

//Root di aplikasi
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Membuat Row dan Column"),
            backgroundColor: Colors.black,
          ),
          body: Container(
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
            child: Container(
                decoration: BoxDecoration(
                    gradient: (LinearGradient(colors: <Color>[
              Colors.amber,
              Colors.blue,
              Colors.green
            ])))),
          )),
    );
  }
}
