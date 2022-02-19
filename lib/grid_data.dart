import 'package:flutter/material.dart';
class GridData extends StatelessWidget {
   GridData({ Key? key }) : super(key: key);
  final _colors=<int>[100,200,300,400,500,600,700,800,900];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Grid View Screen'),),
    body:SafeArea(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _colors.length,
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20,childAspectRatio: 2), 
      itemBuilder: (context,index){
        var color=_colors[index];
      return Container(color: Colors.amber[color],);
      
      }
    ),
    ),
    );
  
      /*GridView.count(crossAxisCount: 2,
       // scrollDirection: Axis.horizontal,
       padding:const EdgeInsets.all(10),
      // reverse: false,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 2,
      children: [
        Container(color: const Color.fromARGB(255, 190, 55, 55),),
        Container(color:const  Color.fromARGB(255, 194, 175, 191),),
        Container(color:const  Color.fromARGB(255, 28, 13, 165),),
        Container(color:const  Color.fromARGB(255, 73, 173, 106),),
        Container(color:const  Color.fromARGB(255, 152, 43, 216),),
        Container(color:const  Color.fromARGB(255, 203, 210, 211),),
        
      ],),*/

  }
}