//bottone rosso LANCIA offerta

import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Metodi/Ridimensiona.dart';
import 'lancioOfferta.dart';

class Lancia extends StatelessWidget{
  @override
  LancioOfferta current_offerta;
  Lancia(LancioOfferta offerta) {
    current_offerta=offerta;
  }

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
        child:Container(

      margin: EdgeInsets.only(
          top: RicalcoloHeight(20.0, context), right: RicalcoloWidth(30.0, context),
      ),
      width: RicalcoloWidth(114.0, context),
      height: RicalcoloHeight(36.0, context),

      child:  AspectRatio(
        aspectRatio: 3 / 1,
        child: ElevatedButton(
         onPressed: () {
      current_offerta.OffertaLanciata();
      },
          style: Primary_Button_Style(),
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              'Lancia',
              style: My_Light_Text(
                  RicalcoloWidth(
                      RicalcoloWidth(1000, context), context),
                  Color(0xffffffff)),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),


    ));


  }
}
