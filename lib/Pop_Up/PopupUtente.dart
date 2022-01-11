
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Tipi/Offerta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Pagine/Pagine_Live/Call.dart';
import '../Controller.dart';
import '../Metodi/Ridimensiona.dart';
import '../main.dart';

class PopupUtente extends StatelessWidget {
  CallPageState current_call;

  PopupUtente(CallPageState call) {
    current_call=call;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
        child:Container(
          
      width: RicalcoloWidth(135.0, context),
      height: RicalcoloHeight(185.0, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.0),
        color: const Color(0xe1ffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x58000000),
            offset: Offset(0.0, RicalcoloHeight(3.0, context)),
            blurRadius: 6,
          ),
        ],
      ),
          child: Container(

            margin: EdgeInsets.only(
                top: RicalcoloHeight(4.0, context), right: RicalcoloWidth(4.0, context),
                bottom: RicalcoloHeight(1.0, context), left: RicalcoloWidth(10.0, context)),

            child: Column(

              children: [
                Align(
                  alignment: Alignment.topRight,

    child:TextButton(
                          onPressed: () {
                            current_call.OffertaUtenteChiusa();
                          },

                          child: Icon(

                            Icons.clear,
                            size: 25.0,
                            color: Colors.black,
                          ),
                        ),


                ),

                Container(
                  child: Text(
                   controller.database.current_Offerta.titolo ,
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(16.0, context),
                      color: const Color(0xff0e1116),
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline, decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:RicalcoloHeight(10.0, context))),

                Container(
                  child: Text(
                    controller.database.current_Offerta.prezzo.toString() ,
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(27.0, context),
                      color: const Color(0xff0e1116),
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline, decorationColor: Colors.black,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                    textAlign: TextAlign.left,
                  ),

                ),

                Padding(padding: EdgeInsets.only(top:RicalcoloHeight(10.0, context))),

                Container(
                  child: Text(
                    controller.database.current_Offerta.opzioneRitiro,
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(11.0, context),
                      color: const Color(0xffe00a17),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline, decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

                Padding(padding: EdgeInsets.only(top:RicalcoloHeight(15.0, context))),

                Container(
                  width: RicalcoloWidth(85.0, context),
                  height: RicalcoloHeight(32.0, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xffe00a17),
                    border: Border.all(  width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3e000000),
                        offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextButton (
                    onPressed: () {},
                    child: Text(
                      'Compra',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(12.0, context),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),

              ],
            ),
          ),

        //),
      //),

    ));

  }
}

const String _svg_wgigdu =
    '<svg viewBox="246.5 509.5 95.0 1.0" ><path transform="translate(246.5, 509.5)" d="M 0 0 L 95 0" fill="none" stroke="#e00a17" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_3y4gpk =
    '<svg viewBox="11.5 12.5 7.5 7.5" ><path transform="translate(11.5, 12.5)" d="M 0 0 L 7.538216114044189 7.538216114044189" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_hqjyhz =
    '<svg viewBox="11.5 12.5 8.1 7.5" ><path transform="translate(11.5, 12.5)" d="M 8.07666015625 0 L 0 7.538216114044189" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
