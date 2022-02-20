import 'package:flutter/material.dart';
class WrapData extends StatelessWidget {
  const WrapData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Screen'),),
      body: SafeArea(child: Wrap(
       // direction: Axis.vertical,
        alignment: WrapAlignment.center,
        spacing:10.0,
        runSpacing: 8.0,
        children: const [
          Chip(avatar: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            child: Text('AS'),            
          ),
            label: Text('Abhay Sangwan')),
            Chip(avatar: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 114, 192, 231),
            child: Text('AS'),            
          ),label: Text('Rahul Sangwan')),
              Chip(avatar: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 130, 107, 214),
            child: Text('AS'),            
          ),label: Text('Toni Hari')),
                Chip(avatar: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 122, 185, 146),
            child: Text('AS'),            
          ),label: Text('Pankaj Kalu')),
        ],
      )),
    );
  }
}