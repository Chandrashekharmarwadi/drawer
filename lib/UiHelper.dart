import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static CustomDialog(BuildContext context,String title){
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text(title),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Ok"))
        ],
      );
    });
  }
}