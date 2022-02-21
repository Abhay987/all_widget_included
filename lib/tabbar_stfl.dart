import 'package:flutter/material.dart';
class TabStfl extends StatefulWidget {
  const TabStfl({ Key? key }) : super(key: key);

  @override
  _TabStflState createState() => _TabStflState();
}

class _TabStflState extends State<TabStfl> with SingleTickerProviderStateMixin {
    late TabController _tabController;
    
    @override
  void initState() {   
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      //event logic
    });
      }
      @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tabbar Screen 2'),
          bottom: TabBar(
             indicatorColor: Colors.redAccent,
          // indicatorSize: TabBarIndicatorSize.label,
        //  isScrollable: true,
          labelColor: Colors.orangeAccent,
          unselectedLabelColor: Colors.greenAccent,
          indicator: BoxDecoration(
           borderRadius: BorderRadius.circular(80),
           color: Colors.lightGreen,
          ),
            controller: _tabController,
            tabs:const [
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
        body:  TabBarView(controller: _tabController,
          children: [
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
      ),
    );
  }
}