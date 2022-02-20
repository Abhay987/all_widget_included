
import 'package:flutter/material.dart';
class CardData extends StatelessWidget {
  const CardData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Launch')),
      body: SafeArea(
        child:
            Card(
              elevation: 2,
              child: Column(
               mainAxisSize: MainAxisSize.min,          
                children: [      
                  const  ListTile(
                    leading: Icon(Icons.access_time_filled),
                    title:  Text('Flutter'),
                    subtitle: Text('Flutter is hubrid platform'),
                  ),
                  Row(
                
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: const Text('Yes')),
                         TextButton(onPressed: (){}, child: const Text('No')),
                      ],
                  ),
                ],
              ),
            ),
        
         
     
      ),
      
    /*  SafeArea(child: Container(
    width: double.infinity,
    height: 100.0,
    color: Colors.blue,
    alignment: Alignment.center,
    child: AspectRatio(
      aspectRatio: 8/1,
      child:   Container(
      color: Colors.green,
      
      ),
    ),
      )
      ), */
    );
  }
}