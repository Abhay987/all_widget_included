

import 'package:flutter/material.dart';
import 'package:myfirstapp/btmnvr_data.dart';
import 'package:myfirstapp/card_data.dart';
import 'package:myfirstapp/grid_data.dart';
import 'package:myfirstapp/img_screen.dart';
import 'package:myfirstapp/list_data.dart';
import 'package:myfirstapp/row_column.dart';
import 'package:myfirstapp/rte_date.dart';
import 'package:myfirstapp/stack_layout.dart';
import 'package:myfirstapp/stful_data.dart';
import 'package:myfirstapp/wrap_data.dart';

void main() {
  runApp(MaterialApp(
   initialRoute: '/',
      routes: {       
        '/': (context) => const MyApp(),       
        '/thd': (context) => const ThdScr(),
        '/imgscr':(context) => const ImgScr(),
        '/gridscr':(context) =>  GridData(),
        '/rowcol':(context) =>  const RowColumn(),
        '/stackdata':(context)=> const StackData(),
        '/carddata':(context) => const CardData(),
        '/wrapdata':(context) => const WrapData(),
        '/stfldata':(context) => const StflData(),
        '/btmnvbr':(context) => const BtmNvr(),
        '/rtscr':(context) => const RteData(),
        
        
                
      },));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Center(child: Text('My First App')),
      backgroundColor: Colors.lightGreenAccent,
      leading: const Icon(Icons.menu),
      actions: [InkWell(child: const Icon(Icons.settings),onTap: (){},)],

    ),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const SndScr(),));}, child: const Text('SndScreen')),
      ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/thd');}, child: const Text('Go Third')),
       ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/imgscr');}, child: const Text('Image Launch')),
        ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> ListData(),));}, child: const Text('Listview Launch')),
        ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/gridscr');}, child: const Text('Grid Launch')),
        ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rowcol');}, child: const Text('Row&Column Launch')),
         ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/stackdata');}, child: const Text('Stack Launch')),
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/carddata');}, child: const Text('Card Launch')),
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/wrapdata');}, child: const Text('Wrap Launch')),
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/stfldata');}, child: const Text('StatefulWidgt Launch')),
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/btmnvbr');}, child: const Text('btmnvbr Launch')),
          ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rtscr');}, child: const Text('Route Screen')),
          
       
       ],
    ),)
     );
  }
}
class SndScr extends StatelessWidget {
const SndScr({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
         backgroundColor: Colors.cyan,
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
       ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/');}, child: const Text('Go first')),
     ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/thd');}, child: const Text('Go Third')),
       
      ],),),
    );
  }
}
class ThdScr extends StatelessWidget {
const ThdScr({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
         backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
     ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/');}, child: const Text('Go first')),
        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: const Text('Go Back')),
         ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/imgscr');}, child: const Text('Image Lauch')),
        ],),
      ),
    );
  }
}