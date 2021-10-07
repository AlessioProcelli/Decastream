import 'dart:io';
import 'dart:ui';

import 'package:everstream/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

import '../../Metodi/Metodi_Grafici.dart';
import 'ProfiloUtente_Modifica.dart';

class Profiloutente extends StatelessWidget {
  BuildContext thiscontext;
  bool changeFotoProfilo = false;
  File fotoCambiata;

  Profiloutente({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    thiscontext = context;
    return SafeArea(
      child: Stack(
        children: <Widget>[
          /// Parte Grigia in alto
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(233.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)),
              color: const Color(0x0e000000),
            ),

            ///Dati In Alto Utente
            child: Container(
              margin: EdgeInsets.only(top: RicalcoloHeight(39.0, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Nome Utente
                  Text(
                    "@" + controller.database.currentUser.username,
                    style: My_Light_Text(RicalcoloWidth(11.0, context),Color(0xff000000)),
                    textAlign: TextAlign.left,
                  ),

                  ///Foto Profilo
                  Container(
                    margin: EdgeInsets.only(top: RicalcoloHeight(5.0, context)),
                    child:
                        // Adobe XD layer: 'fedez-biografia-202…' (shape)
                        Container(
                      width: RicalcoloWidth(116.0, context),
                      height: RicalcoloHeight(116.0, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              controller.database.currentUser.foto_profilo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: RicalcoloHeight(10.0, context)),
                    child: Text(
                      controller.database.currentUser.nome +
                          "  " +
                          controller.database.currentUser.cognome,
                      style: My_Bold_Text(RicalcoloWidth(19.0, context),Color(0xff0e1116)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Bottone Modifica
          Container(
            margin: EdgeInsets.only(
                top: RicalcoloHeight(12.0, context),
                right: RicalcoloWidth(10.0, context)),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: ElevatedButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => Profiloutentemodifica(this));
                  Navigator.push(context, route);
                },
                style: My_Button_Style(Size(RicalcoloWidth(64.0, context),
                    RicalcoloHeight(21.0, context))),
                child: Text(
                  'Modifica',
                  style: My_Text_Style(
                      RicalcoloWidth(10.5, context), Color(0xffffffff)),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),

          /// Bottoni Presentazione Body
          Container(
            margin: EdgeInsets.only(top: RicalcoloHeight(280.0, context)),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /// Box VideoChiamate
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset('assets/image/videocameraRED.png'),
                    label: Text(
                      'Videochiamate effettuate',
                      style: My_Text_Style2(18.0, Colors.black),
                      textAlign: TextAlign.left,
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Lingua

                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset('assets/image/linguaRED.png'),
                    label: Text(
                      'Lingua',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Pagamento
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset('assets/image/carteRED.png'),
                    label: Text(
                      'Metodo di pagamento',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Spedizione
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset('assets/image/homeRED.png'),
                    label: Text(
                      'Indirizzo di spedizione',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Privacy
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset('assets/image/privacyRED.png'),
                    label: Text(
                      'Privacy e Sicurezza',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Notifiche e suoni
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset("assets/image/notificheRED.png"),
                    label: Text(
                      'Notifiche e suoni',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),

                Padding(
                    padding:
                        EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                /// Box Bisongo di aiuto
                ElevatedButton.icon(
                    onPressed: () {
                      print("Panic");
                    },
                    style: My_White_Style(Size(RicalcoloWidth(210.0, context),
                        RicalcoloHeight(38.0, context))),
                    icon: Image.asset("assets/image/helpRED.png"),
                    label: Text(
                      'Bisogno di aiuto',
                      style: My_Text_Style2(18.0, Colors.black),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ReplaceInfo() {
    rebuildAllChildren(thiscontext);
  }
}
