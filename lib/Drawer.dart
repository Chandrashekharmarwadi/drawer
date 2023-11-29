import 'package:drawer/Cart.dart';
import 'package:drawer/email.dart';
import 'package:flutter/material.dart';

class DR extends StatefulWidget {
  const DR({super.key});

  @override
  State<DR> createState() => _DRState();
}

class _DRState extends State<DR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        //padding: EdgeInsets.zero,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyanAccent
              ),
                child: Center(child: Text("Drawer",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),))),
            ListTile(
              title: Text("Email",style: TextStyle(fontWeight: FontWeight.w800)),
              trailing: Icon(Icons.arrow_forward),
              leading: Icon(Icons.mail),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Email()));
              },
            ),
            ListTile(
              title: Text("Cart",style: TextStyle(fontWeight: FontWeight.w800)),
              leading: Icon(Icons.shopping_cart),
              trailing: Icon(Icons.arrow_forward),
              onTap:
              (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
            ),
            ListTile(
              title: Text("Settings",style: TextStyle(fontWeight: FontWeight.w800)),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
