import 'package:flutter/material.dart';
class RteData extends StatelessWidget {
  const RteData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: const Text('First Page')),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: ElevatedButton(
               onPressed: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SecondPage(),));
         Navigator.push(context,
          PageRouteBuilder(pageBuilder: (c,a1,a2)=>const SecondPage(),
          transitionsBuilder: (c,a1,a2,child)=>FadeTransition(opacity: a1,child: child),
          transitionDuration: const Duration(seconds: 2)));
        },
         child: const Text('First Page')),
      ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
const SecondPage({ Key? key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey,
        child: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pop(context);
         // Navigator.of(context).pop();
        }, child: const Text('Second Page')),
    ),
      );
    
    
  }
}