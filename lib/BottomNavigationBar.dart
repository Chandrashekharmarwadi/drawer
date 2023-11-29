import 'package:flutter/material.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(child: Text("Bottom Navigation Bar",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),))
      ],),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add),
          label: "Add"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "Profile")
      ]),
    );
  }
}
