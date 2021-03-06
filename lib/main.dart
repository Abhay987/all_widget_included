

import 'package:flutter/material.dart';
import 'package:myfirstapp/btmnvr_data.dart';
import 'package:myfirstapp/card_data.dart';
import 'package:myfirstapp/drawdata.dart';
import 'package:myfirstapp/dtme.dart';
import 'package:myfirstapp/eletbtn.dart';
import 'package:myfirstapp/fm_cmp.dart';
import 'package:myfirstapp/fta_btn.dart';
import 'package:myfirstapp/grid_data.dart';
import 'package:myfirstapp/img_screen.dart';
import 'package:myfirstapp/list_data.dart';
import 'package:myfirstapp/row_column.dart';
import 'package:myfirstapp/rte_date.dart';
import 'package:myfirstapp/rtearg.dart';
import 'package:myfirstapp/rtert.dart';
import 'package:myfirstapp/stack_layout.dart';
import 'package:myfirstapp/stful_data.dart';
import 'package:myfirstapp/swdlg.dart';
import 'package:myfirstapp/tabbar.dart';
import 'package:myfirstapp/tabbar_stfl.dart';
import 'package:myfirstapp/txt_fld.dart';
import 'package:myfirstapp/wrap_data.dart';

void main() {
  runApp(MaterialApp(
   initialRoute: '/',
      routes: {       
        '/': (context) => const MyApp(),       
        '/thd': (context) => const ThdScr(),
        '/imgscr':(context) => const ImgScr(),
        '/gridscr':(context) =>  GridData(),
        '/rowcol':(context) =>  const RowColumn(),
        '/stackdata':(context)=> const StackData(),
        '/carddata':(context) => const CardData(),
        '/wrapdata':(context) => const WrapData(),
        '/stfldata':(context) => const StflData(),
        '/btmnvbr':(context) => const BtmNvr(),
        '/rtscr':(context) => const RteData(),
        '/rtarg':(context) => const RteArg(),
        '/rtrt':(context) => const RteRt(),
        '/tabdata':((context) => const TabData()),
        '/tbrsw':(context) => const TabStfl(),
        '/dwscr':(context) => const DrawData(),
       '/elebtn':(context) => const EleBtn(),      
         '/ftabtn':(context) => const FtaBtn(),  
         '/txtfld':(context) => const TxtFld(),  
          '/fmcmp':(context) => const FmData(), 
          '/dldbx':(context) => const DldData(), 
          '/dttm':(context) => const Dttm(),
          
                
      },));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Center(child: Text('My First App')),
      backgroundColor: Colors.lightGreenAccent,
      leading: const Icon(Icons.menu),
      actions: [InkWell(child: const Icon(Icons.settings),onTap: (){},)],

    ),
    body: ListView(   
                                                   
                  children: [               
                              Center(child: Container(
                                margin:const EdgeInsets.only(top: 30,bottom: 30),
                                child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>const SndScr(),));}, child: const Text('SndScreen')))),
                              Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                                child: ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/thd');}, child: const Text('Go Third')))),
              Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/imgscr');}, child: const Text('Image Launch')))),
    Container(
      margin: const EdgeInsets.only(bottom: 30),child: Center(
      child: ElevatedButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> ListData(),));}, child: const Text('Listview Launch')))),
                      Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                        child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/gridscr');}, child: const Text('Grid Launch')))),                    
                      
              Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rowcol');}, child: const Text('Row&Column Launch')))),

                       Container(margin: const EdgeInsets.only(bottom: 30),
                         child: Center(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/stackdata');}, child: const Text('Stack Launch')))),                   
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/carddata');}, child: const Text('Card Launch')))),                      // const SizedBox(height: 20),
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/wrapdata');}, child: const Text('Wrap Launch')))),                       //const SizedBox(height: 20),
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/stfldata');}, child: const Text('StatefulWidgt Launch')))),                      // const SizedBox(height: 20),
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/btmnvbr');}, child: const Text('btmnvbr Launch')))),
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                          child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rtscr');}, child: const Text('Route Screen')))),
                        Container(margin: const EdgeInsets.only(bottom: 30),
                          child: Center(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rtarg');}, child: const Text('RouteArg Screen')))),
                          Container(margin: const EdgeInsets.only(bottom: 30),
                            child: Center(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/rtrt');}, child: const Text('RouteReplacement Screen')))),
                          Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                            child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/tabdata');}, child: const Text('Tabbar Screen')))),
                     Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/tbrsw');}, child: const Text('Tabbar SW Screen')))),
                     Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/dwscr');}, child: const Text('Drawer Screen')))),
                     Container(margin: const EdgeInsets.only(bottom: 30),
                       child: Center(child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/elebtn');}, child: const Text('Types of button')))),
                     Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/ftabtn');}, child: const Text('Floating button')))),
                     Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/txtfld');}, child: const Text('Textfield Screen')))),
                       Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/fmcmp');}, child: const Text('Form Screen')))),
                        Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/dldbx');}, child: const Text('Dialog Screen')))),
                       Center(child: Container(margin: const EdgeInsets.only(bottom: 30),
                       child: ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/dttm');}, child: const Text('Date & Time')))),




                               
                   ],
                    ),
          

           
        
      
   
      );
  }
}
class SndScr extends StatelessWidget {
const SndScr({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
         backgroundColor: Colors.cyan,
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
       ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/');}, child: const Text('Go first')),
     ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/thd');}, child: const Text('Go Third')),
       
      ],),),
    );
  }
}
class ThdScr extends StatelessWidget {
const ThdScr({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
         backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
     ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/');}, child: const Text('Go first')),
        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: const Text('Go Back')),
         ElevatedButton(onPressed: (){ Navigator.pushNamed(context, '/imgscr');}, child: const Text('Image Lauch')),
        ],),
      ),
    );
  }
}