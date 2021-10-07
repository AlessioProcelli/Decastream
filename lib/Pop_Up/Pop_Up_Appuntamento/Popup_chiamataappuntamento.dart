import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/main.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

import 'appuntamento1.dart';

class Popup_chiamataappuntamento extends StatelessWidget {
  bool active=false;
  BuildContext context;
  Azienda current_azienda;
  Popup_chiamataappuntamento(Azienda azienda){
    current_azienda=azienda;
  }
  @override
  Widget build(BuildContext context) {
    this.context=context;
    return  active ?Scaffold(
      backgroundColor: const Color(0x88000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
                        offset: Offset(RicalcoloWidth(-13.0, context), RicalcoloHeight(-15.0, context)),
            child: Container(
              width: RicalcoloWidth(416.0, context),
            height: RicalcoloHeight(858.0, context),
              decoration: BoxDecoration(
                color: const Color(0x88000000),
                border: Border.all(width: RicalcoloWidth(1.0, context), color: const Color(0xc0707070)),
              ),
            ),
          ),
            Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(15.0, context),top:RicalcoloHeight(45.6, context)),
    child:TextButton(
    onPressed: (){
    active=false;
    rebuildAllChildren(context);
    },

            child: Container(
              width: 30.0,
              height: 30.0,
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


       child: Icon(
         Icons.arrow_back,
         color: Colors.black,
         size: 30.0,
       ),
          ),
          ),
            ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(29.0, context), RicalcoloHeight(248.0, context)),
            child: Container(
              width: RicalcoloWidth(319.0, context),
            height: RicalcoloHeight(401.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x64000000),
                     offset: Offset(0.0,  RicalcoloHeight(4.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(29.0, context), RicalcoloHeight(191.0, context)),
            child:
                // Adobe XD layer: 'copertina' (group)
                SizedBox(
              width: RicalcoloWidth(319.0, context),
            height: RicalcoloHeight(185.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 319.0, 185.0),
                    size: Size(319.0, 185.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'copertina' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: new NetworkImage(current_azienda.img_copertina),
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
              offset: Offset(RicalcoloWidth(143.0, context), RicalcoloHeight(417.0, context)),
            child: Text(
              'CHIAMA ORA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: 11,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(144.0, context), RicalcoloHeight(547.0, context)),
            child: Text(
              'CHIAMA ORA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: 12,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(71.0, context), RicalcoloHeight(430.0, context)),
            child:Container(
    child:TextButton(
    onPressed: (){
      controller.ChiamaAzienda(current_azienda.id,context);
    },
    child: SizedBox(
              width: RicalcoloWidth(212.0, context),
            height: RicalcoloHeight(65.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                    size: Size(212.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'follower' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                          size: Size(212.0, 65.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'SEGUITI' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                                size: Size(212.0, 65.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'follower' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                                      size: Size(212.0, 65.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(23.0),
                                          color: const Color(0xffe00a17),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(23.0, 23.0, 148.0, 20.0),
                                size: Size(212.0, 65.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'VIDEOCHIAMA ORA',
                                  style: TextStyle(
                                    fontFamily: 'MADE TOMMY',
                                    fontSize: 16,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
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
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(71.0, context), RicalcoloHeight(530.0, context)),
            child: Container(
    child:TextButton(
      onPressed: (){
        print("magic");
        Route route = MaterialPageRoute(builder: (context) => appuntamento1());
        Navigator.push(context, route);
      },
    child:SizedBox(
              width: RicalcoloWidth(212.0, context),
            height: RicalcoloHeight(65.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                    size: Size(212.0, 65.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'follower' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                          size: Size(212.0, 65.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child:
                              // Adobe XD layer: 'SEGUITI' (group)
                              Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                                size: Size(212.0, 65.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child:
                                    // Adobe XD layer: 'follower' (group)
                                    Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 212.0, 65.0),
                                      size: Size(212.0, 65.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(23.0),
                                          color: const Color(0xffe00a17),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(23.0, 23.0, 151.0, 20.0),
                                size: Size(212.0, 65.0),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Text(
                                  'PRENOTA UNA CALL',
                                  style: TextStyle(
                                    fontFamily: 'MADE TOMMY',
                                    fontSize: 16,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
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
                ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(145.0, context), RicalcoloHeight(318.0, context)),
            child:
                // Adobe XD layer: 'profilo' (shape)
                Container(
              width: RicalcoloWidth(86.0, context),
            height: RicalcoloHeight(88.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                image: DecorationImage(
                  image: new NetworkImage(current_azienda.img_profilo),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: RicalcoloWidth(1.5, context), color: const Color(0xff0e1116)),
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
              offset: Offset(RicalcoloWidth(246.0, context), RicalcoloHeight(431.0, context)),
            child:
                // Adobe XD layer: 'telecameraBLACK' (shape)
                Container(
width: RicalcoloWidth(70.0, context),
            height: RicalcoloHeight(71.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/telecameraBLACK 2.png"),
                  fit: BoxFit.fill,
                ),

              ),
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(258.0, context), RicalcoloHeight(539.0, context)),
            child:
                // Adobe XD layer: 'Raggruppa 156' (shape)
                Container(
width: RicalcoloWidth(50.0, context),
            height: RicalcoloHeight(49.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/orologio_nero.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),

    ):
    Container();
  }
 void ActivePopup(){
    active=true;
    rebuildAllChildren(context);
  }
}

const String _svg_bmqaen =
    '<svg viewBox="0.0 0.0 6.7 4.8" ><path transform="translate(0.0, 0.0)" d="M 0 0 L 6.696132183074951 4.758389472961426" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ngbwws =
    '<svg viewBox="0.0 4.8 6.7 4.8" ><path transform="translate(0.0, 4.76)" d="M 0 4.758389472961426 L 6.696132183074951 0" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
