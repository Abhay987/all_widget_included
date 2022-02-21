import 'package:flutter/material.dart';
class EleBtn extends StatelessWidget {
  const EleBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Types of Eleved button')),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                 // onPressed: null,
                  onPressed: (){}, 
                 /* style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),             //  style using Button Style
                  ),    */
                  
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 51, 159, 212),
                    onPrimary:const Color.fromARGB(255, 216, 18, 18),
                   // onSurface: Colors.red,
                  //minimumSize: const Size(500, 500),
                   textStyle: const TextStyle(
                     fontSize: 30,
                     fontStyle: FontStyle.italic,                                       // Syle using button.stylefrom
                   ),
                  // elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),         //    Round Rectangle Border
                   ), 
                //   shape: const CircleBorder(side: BorderSide(color: Colors.red),),         // circle shape
                  ),  
                  child: const Text('Eleveted Button')),
                TextButton(onPressed: (){}, 
                style: TextButton.styleFrom(
                  primary: const Color.fromARGB(255, 51, 159, 212),
                ),
                child: const Text('Text Button')),
                OutlinedButton(onPressed: (){},
                style: OutlinedButton.styleFrom(
                  primary: const Color.fromARGB(255, 51, 159, 212),
                  side: const BorderSide(color: Colors.red,width: 4),
                ),
                 child: const Text('Outlined Button')),
                 ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.settings), label: const Text('Settings')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}