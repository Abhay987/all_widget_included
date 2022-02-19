import 'package:flutter/material.dart';
class ImgScr extends StatelessWidget {
  const ImgScr({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Image Screen'),),
    body: Center(
      child: Container(width: 600,
        height: 600,
        color: Colors.cyanAccent,
        child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',alignment: Alignment.centerRight,),

      ),
    ),

    );
  }
}