
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Ridimensiona.dart';

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
ButtonStyle Primary_Button_Style(){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    primary: Color(0xffe00a17),
    onPrimary: Colors.white,
    elevation: 8,
  );
}
/// Pagina Profilo azienda
ButtonStyle My_Button_Style_CustomColor(){
  return ElevatedButton.styleFrom(
    shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    primary: Colors.white,
    onPrimary: Color(0xffe00a17),
fixedSize:Size(10,10),
    elevation: 8,
  );
}
///per schermata profilo utenti
ButtonStyle My_White_Style(Size size){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    primary: Colors.white,
    onPrimary: Colors.black,
    fixedSize: size,
    elevation: 8,
    alignment: Alignment.centerLeft,
  );
}
/// per bottone generico
TextStyle My_Text_Style( double font_size,Color color){

  return TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: font_size,
    color: color,
    fontWeight: FontWeight.w600,
  );}
/// per schermata profilo utenti
  TextStyle My_Text_Style2( Color color) {
    return TextStyle(
      fontFamily: 'MADE TOMMY',
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  ///Testo bold per Schermate
TextStyle My_Bold_Text(double font_size,Color color){
  return TextStyle(
    fontFamily: 'MADE TOMMY',
    fontSize: font_size,
    color: color,
    fontWeight: FontWeight.w600,
  );

}
TextStyle My_Light_Text( double font_size,Color color) {
  return TextStyle(
    fontFamily: 'MADE TOMMY',
    fontSize: font_size,
    color: color,
    fontWeight: FontWeight.w400,
  );
}