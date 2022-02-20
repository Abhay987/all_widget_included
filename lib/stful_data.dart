import 'package:flutter/material.dart';
class StflData extends StatefulWidget {
  const StflData({ Key? key }) : super(key: key);

  @override
  _StflDataState createState() => _StflDataState();
}

class _StflDataState extends State<StflData> {
  int count =0;
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Example'),        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$count'),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                count++;
              });
            }, child: const Text('Increase')),
             const SizedBox(
              height: 20.0,
            ),
            Text('You pressed increase button : $count'),
          ],
        ),
      ),
    );
  }
}