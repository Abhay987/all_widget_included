import 'package:flutter/material.dart';
class RteArg extends StatelessWidget {
  const RteArg({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
    /*  onGenerateRoute: ((settings) {
        final arg=settings.arguments;
        if(settings.name=='/second'){
          return PageRouteBuilder(pageBuilder: (_,__,___,)=>SecondPage(arg),settings: settings,transitionsBuilder: (_,a,__,c,)=>FadeTransition(opacity: a,child: c,) );
        }
        return null;
      }
      ),*/
      routes: {        
        '/first':((context) => const FirstPage()),
        '/second':((context) => const SecondPage()),
      },
      
      home:const FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('First Page')),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: ElevatedButton(
               onPressed: (){
          //  Navigator.push(context, MaterialPageRoute(builder: (context) =>const SecondPage(),));
       Navigator.pushNamed(context, '/second',arguments: 'This is arg for second page');
        },
         child: const Text('First Page')),
      ),
      );
  }
}
class SecondPage extends StatelessWidget {
    // final tital;
 //SecondPage({this.tital='Second tital'});
   const SecondPage({ Key? key }) : super(key: key);

 @override
  Widget build(BuildContext context) {
 final arg=ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(arg as String)),
      body: Container(
          color: Colors.blueGrey,
          child: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.pop(context);
           // Navigator.of(context).pop();
          }, child: const Text('Second Page')),
      ),
        ),
    );
    
    
  }
}