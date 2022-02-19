import 'package:flutter/material.dart';
class ImgScr extends StatelessWidget {
  const ImgScr({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Image Screen'),),
    body: Center(
      child: Container(
        width: 300,
        height: 300,
   color: Colors.cyanAccent,
       /* child: Image.network('https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter-1030x488.png',
        alignment: Alignment.bottomRight,
        colorBlendMode: BlendMode.colorBurn,
        fit: BoxFit.contain,
        repeat: ImageRepeat.noRepeat,
        ),*/
       // child: Image.asset('assets/images/f1.png'),
       /*decoration: BoxDecoration(
              color: Colors.cyanAccent,      
              image:const DecorationImage(image: NetworkImage('https://tech.pelmorex.com/wp-content/uploads/2020/10/flutter-1030x488.png'),
              //fit: BoxFit.cover,
              ),             
         borderRadius: BorderRadius.circular(200),
       ),
*/
child: ClipOval(child: Image.asset('assets/images/f1.png',fit: BoxFit.cover,),),

      ),
    ),

    );
  }
}