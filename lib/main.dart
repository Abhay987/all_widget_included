import 'package:flutter/material.dart';
import 'package:myfirstapp/img_screen.dart';
import 'package:myfirstapp/list_data.dart';

void main() {
  runApp(MaterialApp(
   initialRoute: '/',
      routes: {       
        '/': (context) => const MyApp(),       
        '/thd': (context) => const ThdScr(),
        '/imgscr':(context) => const ImgScr(),
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