
import 'package:everstream/GraphicsObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../GraphicsObject.dart';

  class ButtonIcon extends StatelessWidget  with  GraphicsObject {
  VoidCallback function;
  String text;
  String assetIcon;

  ButtonIcon(String text,String icon, [VoidCallback function = null]) {
  this.text = text;
  assetIcon=icon;
  if (function == null) {
  this.function = defaultFunction;
  }
  else {
  this.function = function;
  }
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/1,
        child:ElevatedButton.icon(
        onPressed: function,
        style: White_Style(),
        icon: Image.asset(assetIcon),
        label: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Chiamate effettuate',
              style: Text_Style2(Colors.black),
              textAlign: TextAlign.left,
            ))));
  }

  void defaultFunction() {
    notify();
  }

  }
TextStyle Text_Style2( Color color) {
  return TextStyle(
    fontFamily: 'MADE TOMMY',
    color: color,
    fontWeight: FontWeight.w400,
  );
}
ButtonStyle White_Style(){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    primary: Colors.white,
    onPrimary: Colors.black,
    elevation: 8,
    alignment: Alignment.centerLeft,
  );
}