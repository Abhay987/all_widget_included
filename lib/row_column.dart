import 'package:flutter/material.dart';
class RowColumn extends StatelessWidget {
  const RowColumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: SafeArea(child: Center(
        child: Container(
          color: const Color.fromARGB(255, 179, 87, 87),child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
_bluebox(),
_bluebox(),
_bluebox(),
_bluebox(),
        ],)),
      ))),
    );
  }
}
Widget _bluebox(){
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.lightBlueAccent,
      border: Border.all(),
    ),
    
  );
}