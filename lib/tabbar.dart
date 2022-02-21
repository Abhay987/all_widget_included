import 'package:flutter/material.dart';
class TabData extends StatelessWidget {
  const TabData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3,
       child: Scaffold(
         appBar: AppBar(
           title: const Text('Tabbar Screen'),
           bottom:  TabBar(indicatorColor: Colors.redAccent,
          // indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.orangeAccent,
          unselectedLabelColor: Colors.greenAccent,
          indicator: BoxDecoration(
           borderRadius: BorderRadius.circular(80),
           color: Colors.lightGreen,
          ),
             tabs: const [
             Tab(
               icon: Icon(Icons.directions_bus),
              text: 'Bus',
             ),
             Tab(
                icon: Icon(Icons.directions_car),
              text: 'Car',
             ),
             Tab(
                  icon: Icon(Icons.directions_bike),
              text: 'Bike',
             ),
           ]),
         ),
         body: TabBarView(children: [
            Container(
              color: Colors.lightBlueAccent,
              child: const Center(
                child: Text('Bus'),              
              ),
            ),
            Container(color: const Color.fromARGB(255, 55, 212, 165),
              child: const Center(
              child: Text('Car'),)),
            Container(
              color:const  Color.fromARGB(255, 235, 111, 142),child: const Center(
              child: Text('Bike'),)),
            
         ]),
         )
         ),
    );
  }
}