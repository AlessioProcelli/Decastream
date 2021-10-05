



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Ridimensiona.dart';
import 'Metodi_Grafici.dart';

class Input_Row_Box extends StatelessWidget{
  TextEditingController controller;
  bool active=false;
  bool ispassword;

  Input_Row_Box( String default_text, [bool ispassword=false]){
    controller = TextEditingController(text: default_text);
    this.ispassword=ispassword;
  }
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left:RicalcoloWidth(44.0, context)),
      child:TextFormField(
        controller:controller,
        onTap:(){ClearText(controller);},
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        style: My_Bold_Text( RicalcoloWidth(19.0, context), Color(0xff0e1116)),
        textAlign: TextAlign.left,
      ),);
   }
  String getText(){
    return controller.text;
  }
}