import 'package:flutter/material.dart';
class TxtFld extends StatefulWidget {
  const TxtFld({ Key? key }) : super(key: key);

  @override
  _TxtFldState createState() => _TxtFldState();
}

class _TxtFldState extends State<TxtFld> {
 //late final TextEditingController _textEditingController;
 var str =' ';
 @override
  void initState() {   
    super.initState();
   // _textEditingController=TextEditingController(text: 'Initial Value');
  }
  @override
  void dispose() {
    //_textEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Textfield Screen')),
      body: Center(child: TextField(
        //keyboardType: TextInputType.number,
       // textCapitalization: TextCapitalization.characters,
       textAlign: TextAlign.center,
       style: const TextStyle(color: Colors.redAccent),
       decoration: InputDecoration(
         label: const Text('Username'),
         icon: const Icon(Icons.verified_user),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(30),
         ),
       ),
      // obscureText: false,
      // maxLines: 4,
        onChanged: ((value) {
          str=value;
        }),
       // controller: _textEditingController,
      )),
      floatingActionButton: FloatingActionButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: ((context) => Inpage(str
      //   _textEditingController.text
         )
         )
         )
         );
      },child: const Icon(Icons.done),),
    );
  }
}
class Inpage extends StatelessWidget {
  final String user_input;
  Inpage(this.user_input);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user_input),),
      body: Center(child: Text(user_input),),
    );
  }
}
