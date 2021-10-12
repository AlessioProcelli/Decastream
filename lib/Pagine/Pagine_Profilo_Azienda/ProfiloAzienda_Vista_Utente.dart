import 'dart:io';
import 'package:everstream/Pop_Up/Pop_Up_Appuntamento/Popup_chiamataappuntamento.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'package:image_picker/image_picker.dart';

import '../../Tipi/Hashtag.dart';
import '../../Tipi/Indirizzo.dart';
import '../../VideoPlayerPpUp.dart';
import '../../main.dart';

class ProfiloAzienda_VistaUtente extends StatelessWidget {
  Azienda view_azienda;
  Indirizzo indirizzo=new Indirizzo(4,"Muggiole", 12);
  String foto_profilo;
  String foto_copertina;
  List<Hashtag> hashtag_list;
  double icon_dimension=40;
  Popup_chiamataappuntamento popup_chiamata;
  VideoPlayerScreen popup=VideoPlayerScreen();
  ProfiloAzienda_VistaUtente(Azienda azienda,List<Hashtag> hashtagList){
    view_azienda=azienda;
    foto_profilo=azienda.img_profilo;
    foto_copertina=azienda.img_copertina;
    hashtag_list=hashtagList;
    popup_chiamata=Popup_chiamataappuntamento(view_azienda);
  }
  @override
  Widget build(BuildContext context) {

    popup.init();
controller.setCurrentContext(context);

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(-25.0, context)),

            child:
            // Adobe XD layer: 'copertina' (group)
            SizedBox(
              width: RicalcoloWidth(375.0, context),
              height: RicalcoloHeight(204.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 204.0),
                    size: Size(375.0, 204.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'copertina' (shape)
                    Container(
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: NetworkImage(foto_copertina),

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(197.0, context)),
            child:
            // Adobe XD layer: 'nome + descrizione' (group)
            SizedBox(
              width: RicalcoloWidth(153.0, context),
              height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[

                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 27.0, 165.0, 40.0),
                    size: Size(153.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Text(
                      indirizzo.via +" "+ indirizzo.n_Civico.toString() +" ",
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(10.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(31.0, context),top:RicalcoloHeight(396.0, context)),

            child:
            // Adobe XD layer: 'interessi_01' (group)
            SizedBox(
              width: RicalcoloWidth(55.0, context),
              height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'La-Fase-2-per-i-neg…' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        image: DecorationImage(
                          image:NetworkImage(hashtag_list[0].immagine_hashtag),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ),),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(4.0, 51.0, 48.0, 16.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(13.0, context),top:RicalcoloHeight(59.0, context)),
                    width:RicalcoloWidth(55.0, context),
                    height:RicalcoloHeight(67.0, context),
                    child: Text(
                        hashtag_list[0].nome,

                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(7.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(177.0, context),top:RicalcoloHeight(396.0, context)),
            child:
            // Adobe XD layer: 'interessi_03' (group)
            SizedBox(
              width: RicalcoloWidth(55.0, context),
              height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'chiara-ferragni-lan…' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        image: DecorationImage(
                          image: NetworkImage(hashtag_list[1].immagine_hashtag),
                          fit: BoxFit.cover,
                        ),
                      ),


                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 51.0, 44.0, 16.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(13.0, context),top:RicalcoloHeight(59.0, context)),
                    width:RicalcoloWidth(55.0, context),
                    height:RicalcoloHeight(67.0, context),
                    child:  Text(
                    hashtag_list[1].nome,
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(7.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(104.0, context),top:RicalcoloHeight(396.0, context)),
            child:
            // Adobe XD layer: 'interessi_02' (group)
            SizedBox(
              width: RicalcoloWidth(55.0, context),
              height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 55.0, 55.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'profumi-evidenza' (shape)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.0),
                        image: DecorationImage(
                          image: NetworkImage(hashtag_list[2].immagine_hashtag),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 51.0, 44.0, 16.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(13.0, context),top:RicalcoloHeight(55.0, context)),
                    width:RicalcoloWidth(55.0, context),
                    height:RicalcoloHeight(67.0, context),

                    child: Text(hashtag_list[2].nome,

                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(7.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(250.0, context),top:RicalcoloHeight(396.0, context)),
            width: RicalcoloWidth(55.0, context),
            height: RicalcoloHeight(60.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              image: DecorationImage(
                image:NetworkImage(hashtag_list[3].immagine_hashtag),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(250.0, context),top:RicalcoloHeight(396.0, context)),

            child:
            // Adobe XD layer: 'interessi_04' (group)
            SizedBox(
              width: RicalcoloWidth(55.0, context),
              height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[

                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 51.0, 44.0, 16.0),
                    size: Size(55.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(13.0, context),top:RicalcoloHeight(59.0, context)),
                    width:RicalcoloWidth(55.0, context),
                    height:RicalcoloHeight(67.0, context),
                    child:  Text(hashtag_list[3].nome,

                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(7.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(51.0, context), RicalcoloHeight(649.0, context)),
            child:
            // Adobe XD layer: 'valutazione' (group)
            SizedBox(
              width: RicalcoloWidth(111.0, context),
              height: RicalcoloHeight(46.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 111.0, 46.0),
                    size: Size(111.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.0, 5.0, 42.0, 10.0),
                    size: Size(111.0, 46.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Valutazione',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(8.0, context),
                        color: const Color(0xff0e1116),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(68.0, context), RicalcoloHeight(668.0, context)),
            child:
            // Adobe XD layer: 'stelle' (shape)
            Container(
              width: RicalcoloWidth(76.0, context),
              height: RicalcoloHeight(12.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/stelle.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(228.0, context), RicalcoloHeight(143.0, context)),
            child:
            // Adobe XD layer: 'profilo + hastag' (group)
            SizedBox(
              width: RicalcoloWidth(111.0, context),
              height: RicalcoloHeight(113.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 111.0, 113.0),
                    size: Size(111.0, 113.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:TextButton(
                      onPressed:(){
                       popup_chiamata.ActivePopup();
                       },
                    // Adobe XD layer: 'profilo' (shape)
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        image: DecorationImage(
                          image: new NetworkImage(foto_profilo),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: 1.5, color: const Color(0xff0e1116)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(RicalcoloWidth(250.0, context), RicalcoloHeight(281.0, context)),
            child:
            // Adobe XD layer: 'SEGUITI' (group)
            SizedBox(
              width: RicalcoloWidth(73.0, context),
              height: RicalcoloHeight(27.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 67.0, 27.0),
                    size: Size(73.0, 27.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                    // Adobe XD layer: 'follower' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 67.0, 27.0),
                          size: Size(67.0, 27.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              color: const Color(0xffe00a17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(50.0, 2.0, 23.0, 23.0),
                    size: Size(73.0, 27.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
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
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.0, 8.0, 56.0, 12.0),
                    size: Size(73.0, 27.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Follower',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(10.0, context),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(60.0, context),top:RicalcoloHeight(12.0, context)),
                    width:RicalcoloWidth(73.0, context),
                    height:RicalcoloHeight(13.0, context),
                    child: Text( view_azienda.follower.toString(),

                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(12.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(179.0, context), RicalcoloHeight(169.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(15.0, context),
              height: RicalcoloHeight(3.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 3.0, 3.0),
                    size: Size(15.0, 3.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 0.0, 3.0, 3.0),
                    size: Size(15.0, 3.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x56000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.0, 0.0, 3.0, 3.0),
                    size: Size(15.0, 3.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x56000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(54.5, context), RicalcoloHeight(537.5, context)),
            child: SizedBox(
              width: RicalcoloWidth(114.0, context),
              height: RicalcoloHeight(90.0, context),
              child: SingleChildScrollView(
                  child: Text(
                    'giovedì	09–21\nvenerdì	09–21\nsabato	Chiuso\ndomenica	Chiuso\nlunedì	Chiuso\nmartedì	Chiuso\nmercoledì	09–21\n',
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(12.0, context),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w300,
                      height: 1,
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  )),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(55.0, context), RicalcoloHeight(516.0, context)),
            child: Text(
              'Fasce Orarie',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(12.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                height: 1,
              ),
              textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(54.5, context), RicalcoloHeight(534.5, context)),
            child: SvgPicture.string(
              _svg_3q9l7b,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(35.0, context),top:RicalcoloHeight(266.0, context)),
            width: RicalcoloWidth(200.0, context),

            child:  Text(
              view_azienda.descrizione,
              style: TextStyle(
              fontFamily: 'MADE TOMMY',
              fontSize: RicalcoloWidth(11.0, context),
              color: const Color(0xff000000),
              fontWeight: FontWeight.w300,

              height: 1.2,
            ),

            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(7.0, context), RicalcoloHeight(9.0, context)),
            child:
            // Adobe XD layer: 'statistiche' (group)
            SizedBox(
              width: RicalcoloWidth(23.0, context),
              height: RicalcoloHeight(23.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 23.0, 23.0),
                    size: Size(23.0, 23.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.6, 6.5, 10.1, 10.1),
                    size: Size(23.0, 23.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                    // Adobe XD layer: 'profits' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 10.1, 10.1),
                          size: Size(10.1, 10.1),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 10.1, 10.1),
                                size: Size(10.1, 10.1),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.0, 5.5, 1.6, 1.6),
                                      size: Size(10.1, 10.1),
                                      pinLeft: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_lwxv7w,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(2.3, 5.8, 1.0, 4.3),
                                      size: Size(10.1, 10.1),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_x0tarl,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(3.9, 5.0, 1.0, 5.1),
                                      size: Size(10.1, 10.1),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_b8qyxn,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(2.2, 0.0, 7.9, 4.7),
                                      size: Size(10.1, 10.1),
                                      pinRight: true,
                                      pinTop: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_voewea,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(0.8, 7.6, 1.0, 2.5),
                                      size: Size(10.1, 10.1),
                                      pinLeft: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_mwko1,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(8.5, 3.4, 1.0, 6.7),
                                      size: Size(10.1, 10.1),
                                      pinRight: true,
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_sxr18k,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(5.4, 5.5, 1.0, 4.6),
                                      size: Size(10.1, 10.1),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_r4n82r,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(6.9, 4.7, 1.0, 5.4),
                                      size: Size(10.1, 10.1),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: SvgPicture.string(
                                        _svg_yiawxm,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(RicalcoloWidth(209.0, context), RicalcoloHeight(507.0, context)),
            child:
            // Adobe XD layer: 'zara2' (shape)
            Container(
              width: RicalcoloWidth(129.0, context),
              height: RicalcoloHeight(129.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x39000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: TextButton( onPressed:(){




                popup.ActivePopUp();


              },

                child:Container(
                  width: RicalcoloWidth(129.0, context),
                  height: RicalcoloHeight(129.0, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    image: DecorationImage(
                      image: NetworkImage('https://firebasestorage.googleapis.com/v0/b/prova-24d5b.appspot.com/o/secondariaGenerico.jpg?alt=media&token=2d2ef207-f5b4-4637-8eca-c0ac15e00022'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x39000000),
                        offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(28.0, context), RicalcoloHeight(190.0, context)),
            child: Container(
              width: RicalcoloWidth(200.0, context),
              child:Text( view_azienda.nome_azienda,

                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(19.0, context),
                  color: const Color(0xff0e1116),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),),
          //visualizza la mappa
          /*  Transform.translate(
            offset: Offset(RicalcoloWidth(197, context), RicalcoloHeight(222.0, context)),
            child:
                // Adobe XD layer: 'PHOTO-2021-05-30-14…' (shape)
                Container(
              width: RicalcoloWidth(31.0, context),
            height: RicalcoloHeight(31.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/mappa.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          */

          Transform.translate(
            offset: Offset(RicalcoloWidth(130.0, context), RicalcoloHeight(509.0, context)),
            child:
            // Adobe XD layer: 'orari' (shape)
            Container(

              width: RicalcoloWidth(35.0, context),
              height: RicalcoloHeight(35.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/orari.png"),
                  fit: BoxFit.fill,
                ),

              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(309.0, context), RicalcoloHeight(228.0, context)),
            child:
            // Adobe XD layer: 'telecameraBLACK' (shape)
            Container(
              width: RicalcoloWidth(49.0, context),
              height: RicalcoloHeight(50.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/telecameraBLACK.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(-2.0, context), RicalcoloHeight(3.0, context)),
            child:
            // Adobe XD layer: 'statistiche' (shape)
            Container(
              width: RicalcoloWidth(42.0, context),
              height: RicalcoloHeight(42.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/statistiche.png"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(334.0, context), RicalcoloHeight(3.0, context)),
            child:
            // Adobe XD layer: 'impostazioni' (shape)
            Container(
              width: RicalcoloWidth(41.0, context),
              height: RicalcoloHeight(41.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/impostazioni.png"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(158.0, context),top:RicalcoloHeight(191.0, context)),
            child:
            // Adobe XD layer: 'editProfile' (shape)
            Container(
              width: RicalcoloWidth(25.0, context),
              height: RicalcoloHeight(25.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/image/fatto.png"),
                  fit: BoxFit.fill,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius:5,
                  ),
                ],
              ),
              child:TextButton(
                onPressed: (){

                  rebuildAllChildren(context);
                },
              ),
            ),
          ),
          popup,
          popup_chiamata,
        ],
      ),
    );
  }

}

const String _svg_3q9l7b =
    '<svg viewBox="54.5 534.5 91.0 1.0" ><path transform="translate(54.5, 534.5)" d="M 0 0 L 91 0" fill="none" stroke="#121212" stroke-width="0.30000001192092896" stroke-dasharray="1 1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_lwxv7w =
    '<svg viewBox="0.0 5.5 1.6 1.6" ><path transform="translate(0.0, -271.5)" d="M 0.8947697281837463 277.0769958496094 L 0.1118024066090584 277.8841247558594 C -0.03957996889948845 278.0401916503906 -0.03581266850233078 278.2894287109375 0.120264045894146 278.4408569335938 C 0.1967540830373764 278.5150451660156 0.2955914437770844 278.552001953125 0.3943697214126587 278.552001953125 C 0.4971321523189545 278.552001953125 0.5998157858848572 278.511962890625 0.676996111869812 278.4324035644531 L 1.459963321685791 277.6253356933594 C 1.611346125602722 277.4692077636719 1.607578754425049 277.2199096679688 1.451501727104187 277.0685424804688 C 1.295425057411194 276.9171142578125 1.04617166519165 276.9209289550781 0.8947697281837463 277.0769958496094 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x0tarl =
    '<svg viewBox="2.3 5.8 1.0 4.3" ><path transform="translate(-115.45, -290.09)" d="M 118.1637191772461 295.9200439453125 C 117.9462890625 295.9200439453125 117.7700042724609 296.0963134765625 117.7700042724609 296.3137817382812 L 117.7700042724609 299.7784423828125 C 117.7700042724609 299.9959106445312 117.9462890625 300.1721801757812 118.1637191772461 300.1721801757812 L 118.1637344360352 300.1721801757812 C 118.3811416625977 300.1721801757812 118.5574645996094 299.9959106445312 118.5574645996094 299.7784423828125 L 118.5573959350586 296.313720703125 C 118.5573959350586 296.0963134765625 118.3811416625977 295.9200439453125 118.1637191772461 295.9200439453125 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b8qyxn =
    '<svg viewBox="3.9 5.0 1.0 5.1" ><path transform="translate(-191.76, -247.05)" d="M 196.0117034912109 252.0070037841797 C 195.7942657470703 252.0070037841797 195.6179809570312 252.1832733154297 195.6179809570312 252.4007415771484 L 195.6179809570312 256.7315368652344 C 195.6179809570312 256.9490051269531 195.7942657470703 257.125244140625 196.0117034912109 257.125244140625 C 196.2291412353516 257.125244140625 196.4054107666016 256.9490051269531 196.4054107666016 256.7315368652344 L 196.4054107666016 252.4007110595703 C 196.4053955078125 252.1832733154297 196.2291412353516 252.0070037841797 196.0117034912109 252.0070037841797 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_voewea =
    '<svg viewBox="2.2 0.0 7.9 4.7" ><path transform="translate(-110.56, -0.5)" d="M 119.472900390625 0.4980000853538513 L 118.2917785644531 0.4980000853538513 C 118.074348449707 0.4980000853538513 117.898063659668 0.6742741465568542 117.898063659668 0.8917124271392822 C 117.898063659668 1.109150886535645 118.074348449707 1.285424828529358 118.2917785644531 1.285424828529358 L 119.329460144043 1.285424828529358 L 116.4385070800781 4.175773143768311 C 116.360954284668 4.253347873687744 116.2594528198242 4.297471046447754 116.1590805053711 4.297471046447754 C 116.1569671630859 4.297471046447754 116.1548080444336 4.297450542449951 116.152717590332 4.297411441802979 C 116.0560455322266 4.295596599578857 115.9572372436523 4.25127649307251 115.8817291259766 4.175753593444824 L 115.4188461303711 3.712867975234985 C 115.1922302246094 3.486258268356323 114.8914108276367 3.35489559173584 114.5934448242188 3.352450370788574 C 114.5905456542969 3.352430105209351 114.587646484375 3.352430105209351 114.5847778320312 3.352430105209351 C 114.2763824462891 3.352430105209351 113.9684143066406 3.487244367599487 113.7382354736328 3.723223209381104 L 112.8945159912109 4.570747852325439 C 112.7411117553711 4.724852561950684 112.7416610717773 4.974125862121582 112.8957672119141 5.12753963470459 C 112.9725799560547 5.204010009765625 113.0730514526367 5.242235660552979 113.1735229492188 5.242235660552979 C 113.2745590209961 5.242235660552979 113.3756103515625 5.203557014465332 113.4525375366211 5.12627649307251 L 114.2977905273438 4.277234077453613 C 114.2989654541016 4.276089668273926 114.3000793457031 4.274925708770752 114.3012237548828 4.273762226104736 C 114.383430480957 4.189086437225342 114.4905776977539 4.138869285583496 114.5869827270508 4.139835834503174 C 114.6787185668945 4.140584945678711 114.7815628051758 4.189106464385986 114.8620986938477 4.26963996887207 L 115.3249816894531 4.73252534866333 C 115.5464096069336 4.953968048095703 115.8351669311523 5.079038143157959 116.1380615234375 5.08467960357666 C 116.4530334472656 5.090596199035645 116.7657241821289 4.962212562561035 116.9953384399414 4.732564926147461 L 119.8666458129883 1.861841678619385 L 119.8666458129883 2.840590476989746 C 119.8666458129883 3.058028936386108 120.0429153442383 3.234302997589111 120.2603454589844 3.234302997589111 C 120.4777908325195 3.234302997589111 120.6540679931641 3.058028936386108 120.6540679931641 2.840590476989746 L 120.6540679931641 1.679137349128723 C 120.6540679931641 1.027867674827576 120.1242218017578 0.4980000853538513 119.472900390625 0.4980000853538513 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mwko1 =
    '<svg viewBox="0.8 7.6 1.0 2.5" ><path transform="translate(-38.16, -378.15)" d="M 39.31805801391602 385.7458801269531 C 39.1001091003418 385.7451171875 38.92300415039062 385.921630859375 38.92300415039062 386.1395568847656 L 38.92300415039062 387.8325500488281 C 38.92300415039062 388.0499572753906 39.09927749633789 388.2262573242188 39.31671524047852 388.2262573242188 L 39.31673431396484 388.2262573242188 C 39.53417587280273 388.2262573242188 39.71044540405273 388.0499877929688 39.71044540405273 387.8325500488281 L 39.71044540405273 386.1395568847656 C 39.71043395996094 385.9226379394531 39.53499984741211 385.7466125488281 39.31805801391602 385.7458801269531 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sxr18k =
    '<svg viewBox="8.5 3.4 1.0 6.7" ><path transform="translate(-422.65, -167.8)" d="M 431.5506591796875 171.1649932861328 C 431.3333129882812 171.1649932861328 431.156982421875 171.3412780761719 431.156982421875 171.5587158203125 L 431.156982421875 177.4840850830078 C 431.156982421875 177.7015075683594 431.3333129882812 177.8777923583984 431.5506591796875 177.8777923583984 L 431.5506591796875 177.8777923583984 C 431.7681274414062 177.8777923583984 431.9443969726562 177.7015380859375 431.9443969726562 177.4840850830078 L 431.9443969726562 171.5587158203125 C 431.9443969726562 171.3412322998047 431.7681884765625 171.1649932861328 431.5506591796875 171.1649932861328 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r4n82r =
    '<svg viewBox="5.4 5.5 1.0 4.6" ><path transform="translate(-268.07, -271.51)" d="M 273.8587341308594 276.9580078125 C 273.6412658691406 276.9580078125 273.4650268554688 277.13427734375 273.4650268554688 277.3516845703125 L 273.4650268554688 281.1903991699219 C 273.4650268554688 281.4078674316406 273.6412658691406 281.5841369628906 273.8587341308594 281.5841369628906 L 273.8587341308594 281.5841369628906 C 274.0762023925781 281.5841369628906 274.2524719238281 281.4078674316406 274.2524719238281 281.1903991699219 L 274.2524719238281 277.3516845703125 C 274.25244140625 277.13427734375 274.0762023925781 276.9580078125 273.8587341308594 276.9580078125 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yiawxm =
    '<svg viewBox="6.9 4.7 1.0 5.4" ><path transform="translate(-345.36, -234.33)" d="M 352.7043151855469 239.0318908691406 C 352.4873046875 239.0326385498047 352.3119506835938 239.2087249755859 352.3119506835938 239.4255981445312 L 352.3119506835938 244.0123596191406 C 352.3119506835938 244.2297668457031 352.4882202148438 244.4060668945312 352.7056579589844 244.4060668945312 L 352.7057189941406 244.4060668945312 C 352.923095703125 244.4060668945312 353.0994262695312 244.2298278808594 353.0994262695312 244.0123596191406 L 353.0994262695312 239.4255981445312 C 353.0994262695312 239.2075653076172 352.9222717285156 239.0310516357422 352.7043151855469 239.0318908691406 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5a8z23 =
    '<svg viewBox="3.1 2.5 1.6 1.1" ><path transform="translate(3.08, 2.52)" d="M 0 0 L 1.57669472694397 1.120427012443542" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_63ngk3 =
    '<svg viewBox="3.1 3.6 1.6 1.1" ><path transform="translate(3.08, 3.64)" d="M 0 1.120427012443542 L 1.57669472694397 0" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';