import 'package:flutter/material.dart';
class FtaBtn extends StatelessWidget {
  const FtaBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
       BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),       
      ]),
      appBar: AppBar(title: const Text('Floating Action button'),),
      floatingActionButton: Container(margin: const EdgeInsets.only(top: 50),
        child: FloatingActionButton.extended(onPressed: (){}, label: const Text('Like'),icon: const Icon(Icons.thumb_up),)),
      /*
      FloatingActionButton(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        //elevation: 5,                                                           // It can't add multi data such as icon as well as text
        backgroundColor: const Color.fromARGB(255, 109, 199, 211),
        mini: false,
        foregroundColor: Colors.redAccent,
        child: const Icon(Icons.add),
      onPressed: (){}),
      */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const Center(child:  Text('Floating Action Button')),
    );
  }
}