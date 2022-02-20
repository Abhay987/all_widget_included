import 'package:flutter/material.dart';
class StackData extends StatelessWidget {
  const StackData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(title: const Text('Stack Screen'),),
    body: SafeArea(
      child: Center(            
          child: Container(
                 width: 200,
                height: 200,
                color: Colors.lightBlueAccent,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                      width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 42, 211, 9),
                  ),
              ),         
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                   width: 60,
                  height: 60,
                  color: const Color.fromARGB(255, 49, 5, 150),
                ),
              ),
                Align(alignment: Alignment.center,
                  child: Container(
                   width: 50,
                  height: 50,
                  color: const Color.fromARGB(255, 226, 52, 119),
                              ),
                ),
         
              ],
            ),
          ),
     
      )
      ),));
  }
}