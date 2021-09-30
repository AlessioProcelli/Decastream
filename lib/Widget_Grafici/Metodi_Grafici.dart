
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Ridimensiona.dart';

ButtonStyle My_Button_Style(Size size){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    primary: Color(0xffe00a17),
    onPrimary: Colors.white,
    fixedSize: size,
    elevation: 8,
  );
}
TextStyle My_Text_Style( double font_size,Color color){

  return TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: font_size,
    color: color,
    fontWeight: FontWeight.w600,
  );
}