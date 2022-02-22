

import 'package:flutter/material.dart';
class DldData extends StatelessWidget {
  const DldData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Screen'),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,          
          children: [
            OutlinedButton(
              child: const Text('Dialog'),
              onPressed: (){
               showDialog(
                 barrierDismissible: false,
                 context: context, builder: (context)=>AlertDialog(
                   title:  const Text('Alert Dialog'),
                  content:  const Text('Dialog Decripion'),
                  backgroundColor: Colors.lime[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  actions: [
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text('Cancel')),
                  TextButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: const Text('Confirm')),
                     ],
               ));            
              },
            ),
            OutlinedButton(onPressed: () {
              showDialog(barrierDismissible: false,
                context: context, builder: (context)=>SimpleDialog(
                title: const Text('Simple Dialog'),
                children: [
                  SimpleDialogOption(
                    onPressed: () {},
                    child: const Text('Option 1'),
                  ),
                   SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Confirm'),
                  ),
                   SimpleDialogOption(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  
                ],
              ));
            }, child: const Text('Simple Dialog')),
            OutlinedButton(onPressed: () {
              
              showDialog(context: context, builder: (context)=>Dialog(
               // elevation: 0,
               backgroundColor: Colors.transparent,
              child: Container(            
                width: double.infinity,                
                height: double.infinity,
                child: Stack(children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.lime[100],
                  )),
                   Positioned(bottom: 0,
                   right: 0,
                     child: Container(
                     width: 100,
                     height: 100,
                     decoration:const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.lightGreenAccent,
                     ),
                   )),
                ]),
                color: Colors.grey,
              ),  
              ));
            }, child: const Text('Custom Dialog')),
            OutlinedButton(onPressed: () {
              showGeneralDialog(context: context, pageBuilder: (context,animation1,animation2)=>Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.lime[100],
              ));
            }, child: const Text('General Dialog')),
            OutlinedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context)=>Container(
                color: const Color.fromARGB(255, 71, 197, 123),
                height: 50,
                child: const Text('Bottom Sheet'),
              ));
            }, child: const Text('Bottom Sheet'))
          ],
        ),

      ),
    );
  }
}