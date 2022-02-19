import 'package:flutter/material.dart';
class ListData extends StatelessWidget {
   ListData({ Key? key }) : super(key: key);
  final List<int> colorCodes=<int>[900,800,700,600,500,400,300,200,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Center(child: Text('Listview Screen'),),),
      body: SafeArea(
        child: Container(
            color: Colors.white,
        child: ListView.separated(itemCount: colorCodes.length,separatorBuilder: (BuildContext context,int index){return const Divider();},itemBuilder: ((context, index) => Container(height: 100,color: Colors.amber[colorCodes[index]],))),
        // ListView.builder(itemCount: colorCodes.length,itemBuilder: ((context, index) => Container(height: 100,color: Colors.amber[colorCodes[index]],))),
          /*ListView(
            //scrollDirection: Axis.vertical,
            //physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            //shrinkWrap: true,
            //reverse: true,
            children: [            
            Container(
              color: Colors.amberAccent,
              height: 50,
            ),
            Container(
              color: Colors.black54,
                height: 50,
            ),
            Container(
              color: Colors.blueGrey,
                height: 50,
            ),
            Container(
              color: Colors.brown,
                height: 50,
            ),
            Container(
              color: Colors.cyanAccent,
                height: 50,
            ),
          
            
          ],),*/
          
        ),
      ),
    );
  }
}