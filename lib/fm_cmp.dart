import 'package:flutter/material.dart';
class FmData extends StatefulWidget {
  const FmData({ Key? key }) : super(key: key);

  @override
  _FmDataState createState() => _FmDataState();
}

class _FmDataState extends State<FmData> {
  var selected='One';
  final dpdnlt=['One','Two','Three','Four'];
  var _ischecked=false;
  var sex='male';
  var isOn=false;
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Component Screen'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Form(
            key: _key,
            child: TextFormField(
              validator: (value) {
                if(value==null||value.isEmpty){
                  return 'Please Enter some text';
                }
                return null;
              },
            ),
          ),
          Switch(value: isOn, onChanged: (bool? val){
                setState(() {
                  if(val!=null) isOn=val;
                });
          }),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Radio(value: 'male', 
                groupValue: sex, 
                
                onChanged: (String? val){
                  setState(() {
                    if(val!=null) sex=val;
                    //sex=val!;
                  });
                },),
                const Text('Male'),

              ],
            ),            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Radio(value: 'female', 
                groupValue: sex, 
                
                onChanged: (String? val){
                  setState(() {
                    if(val!=null) sex=val;
                    //sex=val!;
                  });
                },),
                const Text('Female'),

              ],
            ),

           /* RadioListTile(value: 'male',
             groupValue: sex,
             subtitile: const Text('Choose your sex'),
             title:const Text('Female'),
              onChanged: (String? val){                                               // Radio Button using List tile that contain default title
              setState(() {
                if(val!=null) sex=val;
                //sex=val!;
              });
            },),                      */
            Checkbox(value: _ischecked,
            activeColor: Colors.lightGreenAccent,
             onChanged: (val2){
               setState(() {
                  if(val2!=null) _ischecked=val2;
                //_ischecked=val!;
               });
             
            }),
          DropdownButton(
            value: selected,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 40,
            underline: Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Color.fromARGB(255, 115, 6, 218))))
              ),
            
            style:const TextStyle(
              //backgroundColor: Color.fromARGB(255, 75, 147, 180),
            color: Colors.redAccent,
            ),
            items: dpdnlt.map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(),
            onChanged: (String? val){
              setState(() {
                if(val!=null) selected=val;
                //selected=val!;
              });
            },
            ),
            ElevatedButton(onPressed: (){
              _key.currentState!.validate();
            }, child: const Text('Validate')),
        ],
      )
        
        ),
    );
  }
}