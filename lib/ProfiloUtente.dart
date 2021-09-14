import 'dart:io';

import 'package:everstream/ProfiloUtenteInfo.dart';
import 'package:everstream/main.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Ridimensiona.dart';

class Profiloutente extends StatelessWidget {
  BuildContext thiscontext;
  bool changeFotoProfilo=false;
  File fotoCambiata;

  Profiloutente({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    thiscontext=context;
    return SafeArea(

        child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(-215.0, context)),
            child: Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(478.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150.0),
                color: const Color(0x0e000000),
              ),
            ),
          ),


//Dati In Alto Utente
 Container(
   width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(top: RicalcoloHeight(39.0, context)),

            child:Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      //Nome Utente
      Text(
              "@"+controller.database.currentUser.username,
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),

      //Foto Profilo
     Container(
       margin:EdgeInsets.only ( top: RicalcoloHeight(5.0, context)),
        child:
        // Adobe XD layer: 'fedez-biografia-202…' (shape)
        Container(
          width: RicalcoloWidth(116.0, context),
          height: RicalcoloHeight(116.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.0),
            image: DecorationImage(
              image: NetworkImage(controller.database.currentUser.foto_profilo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Container(
        margin:EdgeInsets.only ( top: RicalcoloHeight(10.0, context)),

        child: Text(
          controller.database.currentUser.nome+"  "+controller.database.currentUser.cognome,
          style: TextStyle(
            fontFamily: 'MADE TOMMY',
            fontSize: RicalcoloWidth(19.0, context),
            color: const Color(0xff0e1116),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.left,
        ),
      ),
          ],
            ),
    ),


// Bottone Modifica
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(305.0, context),top:RicalcoloHeight(12.0, context)),
            child: TextButton(
              onPressed: (){
                Route route = MaterialPageRoute(builder: (context) => Profiloutentemodifica(this));
                Navigator.push(context, route);
              },
    child:Container(
              width: RicalcoloWidth(54.0, context),
            height: RicalcoloHeight(21.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
                    ),
    child:
    Container(
      margin:  EdgeInsets.only(left:RicalcoloWidth(6.0, context),top:RicalcoloHeight(4.0, context)),
           child:Text(
              'Modifica',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xffe00a17),
              ),
              textAlign: TextAlign.left,

          ),
    ),
          ),
    ),
          ),

// Bottoni Presentazione
    Container(
    margin:  EdgeInsets.only(top:RicalcoloHeight(280.0, context)),
            width: MediaQuery.of(context).size.width,
            child:Column(

                crossAxisAlignment: CrossAxisAlignment.center,
    children:<Widget>[

              // Box VideoChiamate
      SizedBox(
              width: RicalcoloWidth(210.0, context),
            height: RicalcoloHeight(38.0, context),
              child:
                  Container(
                      width:RicalcoloWidth(210.0, context),
                      height:RicalcoloHeight(38.0, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child:Row(
    children:<Widget>[
    Container(
    width: RicalcoloWidth(38.0, context),
    height: RicalcoloHeight(38.0, context),
    decoration: BoxDecoration(
    image: DecorationImage(
    image: const AssetImage("assets/image/videocameraRED.png"),
    fit: BoxFit.fill,
    ),
    ),
    ),
    Text(
    'Videochiamate effettuate',
    style: TextStyle(
    fontFamily: 'MADE TOMMY',
    fontSize: RicalcoloWidth(14.0, context),
    color: const Color(0xff0e1116),
    ),
    textAlign: TextAlign.left,
    ),

    ],
                      ),
                    ),
                  ),

      Padding(padding: EdgeInsets.only(top:RicalcoloHeight(20.0, context))),


      //Box Lingua
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/linguaRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Lingua',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),


      Padding(padding: EdgeInsets.only(top:RicalcoloHeight(20.0, context))),


      //Box Pagamento
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/carteRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Metodo di pagamento',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),

      Padding(padding: EdgeInsets.only(top:RicalcoloHeight(20.0, context))),


      //Box Spedizione
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/homeRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Indirizzo di spedizione',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),

      Padding(padding: EdgeInsets.only(top: RicalcoloHeight(20.0, context))),


      //Box Privacy
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/privacyRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Privacy e Sicurezza',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),

      Padding(padding: EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

      //Box Notifiche E Suoni
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/notificheRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Notifiche e suoni',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),

      Padding(padding: EdgeInsets.only(top: RicalcoloHeight(20.0, context))),

      //Box Bisogno Di Aiuto
      SizedBox(
        width: RicalcoloWidth(210.0, context),
        height: RicalcoloHeight(38.0, context),
        child:
        Container(
          width:RicalcoloWidth(210.0, context),
          height:RicalcoloHeight(38.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
          child:Row(
            children:<Widget>[
              Container(
                width: RicalcoloWidth(38.0, context),
                height: RicalcoloHeight(38.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/helpRED.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                'Bisogno di aiuto',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xff0e1116),
                ),
                textAlign: TextAlign.left,
              ),

            ],
          ),
        ),
      ),

],
            ),
            ),


        ],
        ),
    );
  }
  ReplaceInfo(File foto){
    rebuildAllChildren(thiscontext);
  }
}
