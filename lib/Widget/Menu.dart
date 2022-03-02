import 'package:everstream/GraphicsInterface.dart';
import 'package:everstream/GraphicsObject.dart';
import 'package:everstream/IconChange.dart';
import 'package:everstream/Pagine/Main_Page.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

class Menu extends StatelessWidget with GraphicsObject  {
  GraphicsInterface page;
  IconChange cerca;
  IconChange acquisti;
  IconChange messaggi ;
  IconChange profilo ;
  static const double icon_dimension = 40;

  Menu() {
    cerca = IconChange(this,'assets/image/cerca.png','assets/image/cercaRED.png');
    acquisti=IconChange(this,'assets/image/acquisti.png','assets/image/acquistiRED.png');
    messaggi=IconChange(this,'assets/image/messaggi.png','assets/image/messaggiRED.png');
    profilo=IconChange(this,'assets/image/profilo.png','assets/image/profiloRED.png',true);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: cerca
        ),

        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child:acquisti
        ),

        // Adobe XD layer: 'messaggi@4x' (shape)
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: messaggi
        ),
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child:profilo
        ),
      ],
    );
  }



  int getCurrentActive() {
    if (cerca.isActive) return 1;
    if (acquisti.isActive) return 2;
    if (messaggi.isActive) return 3;
    if (profilo.isActive) return 4;
  }


  changeActive(IconChange active) {
cerca.setCeck(false);
acquisti.setCeck(false);
messaggi.setCeck(false);
profilo.setCeck(false);
active.setCeck(true);
notify();
  }
}
