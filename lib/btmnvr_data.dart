import 'package:flutter/material.dart';
class BtmNvr extends StatefulWidget {
  const BtmNvr({ Key? key }) : super(key: key);

  @override
  _BtmNvrState createState() => _BtmNvrState();
}

class _BtmNvrState extends State<BtmNvr> {
  int _selectedindex=0;
  void _onitemtapped(int index){
    setState(() {
      _selectedindex=index;
    });
  }
  final List _page= const[
    Text('Home'),
    Text('Business'),
    Text('School'),
    Text('Settings'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center( child:_page[_selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        iconSize: 40,
        mouseCursor: SystemMouseCursors.basic,
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true,
        //selectedItemColor: Colors.lightBlueAccent,
        onTap: _onitemtapped,
        items:const[
BottomNavigationBarItem(icon: Icon(Icons.home), label:'Home',backgroundColor: Color.fromARGB(255, 213, 214, 210)),
BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business',backgroundColor: Color.fromARGB(255, 79, 207, 86)),
BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School',backgroundColor: Color.fromARGB(255, 129, 109, 218)),
BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting',backgroundColor: Color.fromARGB(255, 226, 110, 126)),
        ],
    ),
    );
  }
}