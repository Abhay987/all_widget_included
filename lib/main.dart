import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   initialRoute: '/',
      routes: {       
        '/': (context) => const MyApp(),       
        '/thd': (context) => const ThdScr(),
      },));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('My First App'),
      backgroundColor: Colors.lightGreenAccent,
    ),
    body: Center(child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const SndScr(),));}, child: const Text('SndScreen')),)
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
        ],),
      ),
    );
  }
}