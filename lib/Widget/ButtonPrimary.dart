

import 'package:everstream/GraphicsInterface.dart';
import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GraphicsObject.dart';

class ButtonPrimary extends StatelessWidget  with  GraphicsObject {
  VoidCallback function;
  String text;

  ButtonPrimary(String text, [VoidCallback function = null]) {
    this.text = text;
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
      aspectRatio: 3 / 1,
      child: ElevatedButton(
        onPressed: function,
        style: Primary_Style(),
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            text,
            style: Text_Style(RicalcoloWidth(16, context),
                Color(0xffffffff)),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }


  void defaultFunction() {
   notify();
  }


  ButtonStyle Primary_Style() {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(

        borderRadius: BorderRadius.circular(14),
      ),

      primary: Color(0xffe00a17),
      onPrimary: Colors.white,
      elevation: 8,
    );
  }

  TextStyle Text_Style(double font_size, Color color) {
    return TextStyle(
      fontFamily: 'SF Pro Display',
      fontSize: font_size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }
}