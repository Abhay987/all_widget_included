import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp(),));
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
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}