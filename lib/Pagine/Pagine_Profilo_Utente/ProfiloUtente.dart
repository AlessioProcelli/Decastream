import 'dart:ffi';
import 'dart:io';
import 'dart:ui';

import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import '../../Metodi/Metodi_Grafici.dart';
import 'ProfiloUtente_Modifica.dart';

class Profiloutente extends StatelessWidget {
  Utente activeUser = controller.database.currentUser;
  BuildContext thiscontext;
  bool changeFotoProfilo = false;
  File fotoCambiata;
  double text_size_box = 15.0;
  double width_size_box = 230.0;
  double height_size_box = 43.0;

  Profiloutente({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    thiscontext = context;
    return SafeArea(
      child: SingleChildScrollView(
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
                      "@" + activeUser.username,
                      style: My_Light_Text(
                          RicalcoloWidth(11.0, context), Color(0xff000000)),
                      textAlign: TextAlign.left,
                    ),

                    ///Foto Profilo
                    Container(
                      margin:
                          EdgeInsets.only(top: RicalcoloHeight(5.0, context)),
                        width: RicalcoloWidth(116.0, context),
                        height: RicalcoloHeight(116.0, context),
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(27.0),
                              image: DecorationImage(
                                image: NetworkImage(activeUser.foto_profilo),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),

                    Container(
                      margin:
                          EdgeInsets.only(top: RicalcoloHeight(10.0, context)),
                      child: Text(
                        activeUser.nome + "  " + activeUser.cognome,
                        style: My_Bold_Text(
                            RicalcoloWidth(19.0, context), Color(0xff0e1116)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// Bottone Modifica
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                margin: EdgeInsets.only(
                    top: RicalcoloHeight(12.0, context),
                    right: RicalcoloWidth(10.0, context)),
                width: RicalcoloWidth(75.0, context),
                height: RicalcoloHeight(38.0, context),
                child: AspectRatio(
                  aspectRatio: 25 / 16,
                  child: ElevatedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => Profiloutentemodifica(this));
                      Navigator.push(context, route);
                    },
                    style: Primary_Button_Style(),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'Modifica',
                        style: My_Text_Style(
                            RicalcoloWidth(
                                RicalcoloWidth(1000, context), context),
                            Color(0xffffffff)),
                        textAlign: TextAlign.left,
                      ),
                    ),
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
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset('assets/image/videocameraRED.png'),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Chiamate effettuate',
                            style: My_Text_Style2(Colors.black),
                            textAlign: TextAlign.left,
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Lingua

                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset('assets/image/linguaRED.png'),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Lingua',
                            style: My_Text_Style2(Colors.black),
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Pagamento
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset('assets/image/carteRED.png'),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Metodo di pagamento',
                            style: My_Text_Style2(Colors.black),
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Spedizione
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset('assets/image/homeRED.png'),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Indirizzo di spedizione',
                            style: My_Text_Style2(Colors.black),
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Privacy
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset('assets/image/privacyRED.png'),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Privacy e Sicurezza',
                            style: My_Text_Style2(Colors.black),
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Notifiche e suoni
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset("assets/image/notificheRED.png"),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Notifiche e suoni',
                            style: My_Text_Style2(Colors.black),
                          ))),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Bisongo di aiuto
                  ElevatedButton.icon(
                      onPressed: () {
                        print("Panic");
                      },
                      style: My_White_Style(Size(
                          RicalcoloWidth(width_size_box, context),
                          RicalcoloHeight(height_size_box, context))),
                      icon: Image.asset("assets/image/helpRED.png"),
                      label: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Bisogno di aiuto',
                            style: My_Text_Style2(Colors.black),
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  replaceInfo() {
    rebuildAllChildren(thiscontext);
  }
}
