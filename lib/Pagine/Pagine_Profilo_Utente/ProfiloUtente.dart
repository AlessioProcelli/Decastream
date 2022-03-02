import 'dart:io';
import 'dart:ui';
import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/Widget/ButtonIcon.dart';
import 'package:everstream/Widget/ButtonPrimary.dart';
import 'package:everstream/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import '../../Metodi/Metodi_Grafici.dart';
import 'ProfiloUtente_Modifica.dart';

class Profiloutente extends StatelessWidget {
  Utente activeUser = controller.database.activeUser as Utente;
  BuildContext context;
  bool changeFotoProfilo = false;
  File fotoCambiata;
  double text_size_box = 15.0;
  double width_size_box = 230.0;
  double height_size_box = 43.0;
  Size buttonSize;
   ButtonPrimary bottoneModifica;

  Profiloutente(){
    bottoneModifica=new ButtonPrimary("Modifica",actionForButton);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    buttonSize=new Size(RicalcoloWidth(width_size_box, context),RicalcoloHeight(height_size_box, context));
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
                child: bottoneModifica
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
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Chiamate effettuate",'assets/image/videocameraRED.png')
                  ),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Lingua
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Lingua",'assets/image/linguaRED.png')
                  ),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Pagamento
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Metodo di pagamento",'assets/image/carteRED.png')
                  ),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Spedizione
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Indirizzo di spedizione",'assets/image/homeRED.png')
                  ),

                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Privacy

                  Container(
                    width:RicalcoloWidth(width_size_box, context),
                    height:RicalcoloHeight(height_size_box, context),
                    child:ButtonIcon("Privacy e Sicurezza",'assets/image/privacyRED.png')
                  ),


                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Notifiche e suoni
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Notifiche e suoni",'assets/image/notificheRED.png')
                  ),


                  Padding(
                      padding:
                          EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

                  /// Box Bisongo di aiuto
                  Container(
                      width:RicalcoloWidth(width_size_box, context),
                      height:RicalcoloHeight(height_size_box, context),
                      child:ButtonIcon("Bisogno di aiuto",'assets/image/helpRED.png')
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  replaceInfo() {
    rebuildAllChildren(context);
  }
  void actionForButton(){
    Route route = MaterialPageRoute(
        builder: (context) => Profiloutentemodifica(this));
    Navigator.push(this.context, route);
  }
}
