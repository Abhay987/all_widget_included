
import 'package:flutter/material.dart';


class RteRt extends StatelessWidget {
  const RteRt({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/fstpage',
         routes: {
        '/fstpage':((context) => const FstPage()),
        '/sndpage':((context) =>const SndPage()),
        '/thdpage':((context) => const ThdPage()), 
      },
      home: const FstPage(),
    );
}}
class FstPage extends StatelessWidget {
 const FstPage({ Key? key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Container(
          color: const Color.fromARGB(255, 204, 147, 110),
          child: Center(
          child: ElevatedButton(onPressed: (){      
          Navigator.pushNamed(context, '/sndpage');
          }, child: const Text('Second Page')),
      ),
        ),
    );
    
    
  }
}
class SndPage extends StatelessWidget {
 const SndPage({ Key? key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page'),),
      body: Container(
          color: const Color.fromARGB(255, 223, 105, 121),
          child: Center(
          child: ElevatedButton(onPressed: (){
       Navigator.of(context).pushNamedAndRemoveUntil('/thdpage',ModalRoute.withName('/fstpage'));
          }, child: const Text('Third Page')),
      ),
        ),
    );
    
    
  }
}
class ThdPage extends StatelessWidget {
 const ThdPage({ Key? key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page')),
    body: Container(
          color:const  Color.fromARGB(255, 94, 202, 135),
          child: Center(
          child: ElevatedButton(onPressed: (){  
            Navigator.pop(context);      
          }, child: const Text('First Page')),
      ),
        ),
    );
    
    
  }
}