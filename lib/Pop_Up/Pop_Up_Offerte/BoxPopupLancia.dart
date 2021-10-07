//box grigio lanciaofferta
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Pagine/Pagine_Live/Call.dart';
import '../../Metodi/Ridimensiona.dart';

List<bool> _selections = List.generate(3, (_) => false);
bool pagaDopoPressed = false;
bool pagaOraPressed = false;
bool pagaSpedizionePressed = false;

class Box extends StatelessWidget {
  CallPageState  current_call;
  final controllerTitolo=TextEditingController();
  final controllerPrezzo=TextEditingController();
  Box(  ) {

  }

  Widget build(BuildContext context) {
    //List<bool> _selections = List.generate(3, (_) => false);
    return Container(

      margin: EdgeInsets.only(
          top: RicalcoloHeight(10.0, context),
          right: RicalcoloWidth(40.0, context),
          bottom: RicalcoloHeight(1.0, context),
          left: RicalcoloWidth(49.0, context)),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34.0),
        color: const Color(0x660e1116),
      ),
      child: Column(
        children: [
          //TITOLO OFFERTA
          Row(
            children: [
              Transform.translate(
                offset: Offset(RicalcoloWidth(20.0, context),
                    RicalcoloHeight(1.0, context)),
                child: SizedBox(
                  width: RicalcoloWidth(224.0, context),
                  child: TextFormField(
                    controller:controllerTitolo,
                    cursorColor: Color(0x92ffffff),
                    decoration: InputDecoration(
                      labelText: 'Titolo Offerta',
                      labelStyle: TextStyle(color: Color(0x92ffffff)),
                    ),
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(20.5, context), //31
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),

          //PREZZO
          Row(
            children: [
              Transform.translate(
                offset: Offset(RicalcoloWidth(20.0, context),
                    RicalcoloHeight(1.0, context)),
                child: SizedBox(
                  width: RicalcoloWidth(108.0, context),
                  child: TextFormField(
                    controller:controllerPrezzo,
                    cursorColor: Color(0x92ffffff),
                    decoration: InputDecoration(
                      labelText: 'Prezzo',
                      labelStyle: TextStyle(color: Color(0x92ffffff)),
                    ),
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(20.5, context), //31
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top:RicalcoloHeight(10.0, context))),
          Container(



                    margin: EdgeInsets.only(
                        top: RicalcoloHeight(1.0, context),
                        right: RicalcoloWidth(1.0, context),
                        bottom: RicalcoloHeight(1.0, context),
                        left: RicalcoloWidth(1.0, context)),

                    child: Column(
                      children: [
// Primo bottone
                        Row(
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                SceltaSpedizione(context, 1);
                              },
                              child: Container(
                                width: RicalcoloWidth(22.0, context),
                                height: RicalcoloHeight(22.0, context),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: pagaDopoPressed
                                      ? Colors.red
                                      : Colors.white,
                                  border: Border.all(
                                      width: RicalcoloWidth(0.4, context),
                                      color: Colors.red),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(
                                          0.0, RicalcoloHeight(3.0, context)),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                                child: pagaDopoPressed
                                    ? Icon(
                                        Icons.clear,
                                        color: Colors.white,
                                      )
                                    : null,
                              ),
                              shape: CircleBorder(),
                            ),

                            SizedBox(
                              width: RicalcoloWidth(150.0, context),
                              //height: RicalcoloHeight(39, context),
                              child: Container(
                                margin: EdgeInsets.only(top: RicalcoloHeight(4.0, context),),
                                child: Text(
                                  'Paga dopo e ritira in negozio',
                                  style: TextStyle(
                                    fontFamily: 'MADE TOMMY',
                                    fontSize: RicalcoloWidth(15.0, context),
                                    color: const Color(0xffffffff),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),


                          ],
                        ),

                        Padding(padding: EdgeInsets.only(top:RicalcoloHeight(5.0, context))),
//Secondo bottone
                      Row(
    children:<Widget>[
                        RawMaterialButton(
                          onPressed: () {
                            SceltaSpedizione(context, 2);
                          },
                          child: Container(
                            width: RicalcoloWidth(22.0, context),
                            height: RicalcoloHeight(22.0, context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: pagaSpedizionePressed
                                  ? Colors.red
                                  : Colors.white,
                              border: Border.all(
                                  width: RicalcoloWidth(0.4, context),
                                  color: Colors.red),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(
                                      0.0, RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: pagaSpedizionePressed
                                ? Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                          shape: CircleBorder(),
                        ),
      SizedBox(
        width: RicalcoloWidth(150.0, context),
        //height: RicalcoloHeight(35, context),
        child: Container(
          margin: EdgeInsets.only(
              top: RicalcoloHeight(4.0, context),),
          child: Text(
            'Spedizione ',
            style: TextStyle(
              fontFamily: 'MADE TOMMY',
              fontSize: RicalcoloWidth(15.0, context),
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
],
                      ),

                        Padding(padding: EdgeInsets.only(top:RicalcoloHeight(5.0, context))),

      //Terzo Bottone
                    Row(
    children:<Widget>[
                        RawMaterialButton(
                          onPressed: () {
                            SceltaSpedizione(context, 3);
                          },
                          child: Container(
                            width: RicalcoloWidth(22.0, context),
                            height: RicalcoloHeight(22.0, context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: pagaOraPressed ? Colors.red : Colors.white,
                              border: Border.all(
                                  width: RicalcoloWidth(0.4, context),
                                  color: Colors.red),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(
                                      0.0, RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                            child: pagaOraPressed
                                ? Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                  )
                                : null,
                          ),
                          shape: CircleBorder(),
                        ),
    SizedBox(
    width: RicalcoloWidth(150.0, context),
    //height: RicalcoloHeight(35, context),
    child: Container(
    margin: EdgeInsets.only(top: RicalcoloHeight(4.0, context),),
    child: Text(
    'Paga ora e ritira in negozio',
    style: TextStyle(
    fontFamily: 'MADE TOMMY',
    fontSize: RicalcoloWidth(15.0, context),
    color: const Color(0xffffffff),
    ),
    textAlign: TextAlign.left,
    ),
    ),
    ),
                      ],
                    ),

                        Padding(padding: EdgeInsets.only(top:RicalcoloHeight(5.0, context))),
                    ],
                    ),
                  ),

    ],
    ),
    );
  }


  String getMetodoDiSpedizione() {
    if (pagaOraPressed == true) {
      return "Pagamento Ora";
    }
    if (pagaSpedizionePressed == true) {
      return "A Domicilio";
    }
    if (pagaDopoPressed == true) {
      return "Pagamento al Ritiro";
    }


  }
}

void SceltaSpedizione(BuildContext context, int scelta) {
  pagaDopoPressed = false;
  pagaSpedizionePressed = false;
  pagaOraPressed = false;
  switch (scelta) {
    case 1:
      pagaDopoPressed = true;
      break;
    case 2:
      pagaSpedizionePressed = true;
      break;
    case 3:
      pagaOraPressed = true;
      break;
  }
  rebuildAllChildren(context);
}

