//bottone rosso LANCIA offerta
import 'package:everstream/NostriWidgetss/PopUpOfferte/PopupOffertaLancio.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Ridimensiona.dart';

class Lancia extends StatelessWidget{
  @override
  LancioOfferta current_offerta;
  Lancia(LancioOfferta offerta) {
    current_offerta=offerta;
  }

  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(
          top: RicalcoloHeight(20.0, context), right: RicalcoloWidth(30.0, context),
          bottom: RicalcoloHeight(1.0, context), left: RicalcoloWidth(230.0, context)),

      width: RicalcoloWidth(114.0, context),
      height: RicalcoloHeight(36.0, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.0),
        color: const Color(0xffe00a17),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            offset: Offset(0.0,RicalcoloHeight(3.0, context)),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: RicalcoloWidth(114.0, context),
            child: TextButton(
              onPressed: () {
                current_offerta.OffertaLanciata();
              },
              child: Text(
                'LANCIA!',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(20.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ),

        ],
      ),

    );


  }
}
