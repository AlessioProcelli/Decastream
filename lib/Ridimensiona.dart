import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
const double CellProgettoWidth=375.0;
const double CellProgettoHeight=812.0;
double RicalcoloWidth(double numero,BuildContext context){
  return((numero/CellProgettoWidth)*MediaQuery.of(context).size.width);
}
double RicalcoloHeight(double numero,BuildContext context){
  return((numero/CellProgettoHeight)*MediaQuery.of(context).size.height);
}
void ClearText(TextEditingController textedit) {
  textedit.clear();
}
void rebuildAllChildren(BuildContext context) {
  (context as Element).reassemble();
}
