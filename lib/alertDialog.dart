import 'package:drawer/UiHelper.dart';
import 'package:flutter/material.dart';

class alertDialog extends StatefulWidget {
  const alertDialog({super.key});

  @override
  State<alertDialog> createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
  // Dialog(){
  //   return showDialog(context: context, builder: (BuildContext context){
  //     return AlertDialog(
  //       title: Text("Pic Image From"),
  //      content: Column(
  //        mainAxisSize: MainAxisSize.min,
  //        children: [
  //          ListTile(
  //            leading: Icon(Icons.camera_alt),
  //            title: Text("Camera"),
  //          ),
  //          ListTile(
  //            leading: Icon(Icons.image),
  //            title: Text("Gallery"),
  //          )
  //        ],
  //      ),
  //       actions: [
  //         TextButton(onPressed: (){
  //           Navigator.pop(context);
  //         }, child: Text("Ok"))
  //       ],
  //     );
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Alert Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          UiHelper.CustomDialog(context, "Alert Box Is Created");
        }, child: Text("Dialog")),
      ),
    );
  }
}
