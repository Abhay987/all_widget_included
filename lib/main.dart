import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('My First App'),
      backgroundColor: Colors.lightGreenAccent,
    ),
    body: Container(child: Text('Hye Abhay'),),
     );
  }
}