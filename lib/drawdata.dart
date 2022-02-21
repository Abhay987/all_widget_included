import 'package:flutter/material.dart';
class DrawData extends StatelessWidget {
  const DrawData({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
       endDrawer:  Drawer(
          child: Container(
            color: Colors.amber[100],
            child: Column(
              children: [
                Container(
                  color: Colors.grey,
               
                  child: const UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                      accountName: Text('Ankit'), 
                      accountEmail: Text('Ankit@gmail.com')),
                /*  color: Colors.yellow,         // Simple Drawheader example
                  child: DrawerHeader(child: Container(decoration: const BoxDecoration(color: Color.fromARGB(255, 90, 212, 126)),
                     width: double.infinity,
                    child: const Text('Drawer Header'),
                    )
                    ),    */
                ),
                  ListTile(
                    title: const  Text('Item 1'),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ), 
                 const Divider(),
                    ListTile(
                    title: const  Text('Item 2'),
                    onTap: (){ Navigator.of(context).pop();},
                  ),                   
              
              ],
            ),
          ),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: ElevatedButton(
                child: const Text('Open Drawer'),
                onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },
                )
                );
          }
        ),
      ),
    );
  }
}