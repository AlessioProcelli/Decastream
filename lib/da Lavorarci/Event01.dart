import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/da%20Lavorarci/Event02.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class Event01 extends StatelessWidget {
  Event01({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(0.0, context), RicalcoloHeight(-38.0, context)),
          
            child: Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(172.0, context),
      
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
      
            offset: Offset(RicalcoloWidth(50.0, context), RicalcoloHeight(49.0, context)),
            child: Text(
              'Step 1',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(35.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
           
            offset: Offset(RicalcoloWidth(50.0, context), RicalcoloHeight(95.0, context)),
            child: Text(
              'Definisci il tuo evento',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(14.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(39.5, context), RicalcoloHeight(157.0, context)),
            child:
                // Adobe XD layer: 'Titol' (group)
                SizedBox(
                  width: RicalcoloWidth(300.0, context),
            height: RicalcoloHeight(36.0, context),
         
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.5, 10.0, 220.0, 21.0),
                    size: Size(299.5, 35.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Scrivi il titolo del tuo evento…',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(18.0, context),
                        color: const Color(0x5f0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(291.5, 0.0, 8.0, 21.0),
                    size: Size(299.5, 35.5),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(18.0, context),
                        color: const Color(0xffe00a17),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 35.5, 296.0, 1.0),
                    size: Size(299.5, 35.5),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_n5g79b,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(40.0, context), RicalcoloHeight(541.0, context)),
            child:
                // Adobe XD layer: 'Descrizione' (group)
                SizedBox(
   
              width: RicalcoloWidth(296.0, context),
            height: RicalcoloHeight(114.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 296.0, 114.0),
                    size: Size(296.0, 114.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: RicalcoloWidth(1.3, context), color: const Color(0xffe00a17)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x31000000),
                            offset: Offset(0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.0, 18.0, 272.0, 16.0),
                    size: Size(296.0, 114.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'Metti una descrizione di massimo 100 caratteri…',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(14.0, context),
                        color: const Color(0x5f0e1116),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            
            offset: Offset(RicalcoloWidth(259.0, context), RicalcoloHeight(673.0, context)),
            child:
                // Adobe XD layer: 'Avanti' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Event_02(),
                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(81.0, context),
            height: RicalcoloHeight(36.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 75.0, 36.0),
                      size: Size(81.0, 36.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.0),
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
                      bounds: Rect.fromLTWH(18.0, 11.0, 35.0, 15.0),
                      size: Size(81.0, 36.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Avanti',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(13.0, context),
                          color: const Color(0xff0e1116),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(66.0, 12.0, 15.0, 14.0),
                      size: Size(81.0, 36.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 15.0, 14.0),
                            size: Size(15.0, 14.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.0),
                                color: const Color(0xffe00a17),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.2, 5.0, 3.3, 2.3),
                            size: Size(15.0, 14.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_tnikpc,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.2, 7.4, 3.3, 2.3),
                            size: Size(15.0, 14.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_jym924,
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
            ),
          ),
          Transform.translate(
            
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(442.0, context)),
            child:
                // Adobe XD layer: 'Hashtag' (group)
                SizedBox(
                  width: RicalcoloWidth(289.0, context),
            height: RicalcoloHeight(66.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(46.0, 0.0, 176.0, 16.0),
                    size: Size(289.0, 66.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(14.0, context),
                          color: const Color(0xff0e1116),
                        ),
                        children: [
                          TextSpan(
                            text: 'Aggiungi tre hashtag qui sotto',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: const Color(0xffe00a17),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(229.0, 2.0, 14.0, 14.0),
                    size: Size(289.0, 66.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'question' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 14.0, 14.0),
                          size: Size(14.0, 14.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x15000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 3.0, 4.0, 9.0),
                          size: Size(14.0, 14.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '?',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 37.0, 85.0, 29.0),
                    size: Size(289.0, 66.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'hashtag1' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 85.0, 29.0),
                          size: Size(85.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x31000000),
                                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 7.0, 7.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '#',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 7.0, 45.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'hashtag1',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0x480e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(102.0, 37.0, 85.0, 29.0),
                    size: Size(289.0, 66.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'hashtag2' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 85.0, 29.0),
                          size: Size(85.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x31000000),
                                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 7.0, 7.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '#',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 7.0, 46.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'hashtag2',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0x480e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(204.0, 37.0, 85.0, 29.0),
                    size: Size(289.0, 66.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'hashtag3' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 85.0, 29.0),
                          size: Size(85.0, 29.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x31000000),
                                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 7.0, 47.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'hashtag3',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0x480e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 7.0, 7.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '#',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(40.0, context), RicalcoloHeight(220.0, context)),
            child:
                // Adobe XD layer: 'Copertina' (group)
                SizedBox(
                  width: RicalcoloWidth(156.0, context),
            height: RicalcoloHeight(137.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 0.0, 115.0, 16.0),
                    size: Size(156.0, 137.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Inserisci la copertina',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 26.0, 156.0, 111.0),
                    size: Size(156.0, 137.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x2f000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
          
            offset: Offset(RicalcoloWidth(228.0, context), RicalcoloHeight(246.0, context)),
            child:
                // Adobe XD layer: 'bottone_category' (group)
                SizedBox(
                  width: RicalcoloWidth(111.0, context),
            height: RicalcoloHeight(35.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 103.0, 35.0),
                    size: Size(111.5, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(94.5, 9.5, 17.0, 17.0),
                    size: Size(111.5, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: 1.5708,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 17.0, 17.0),
                            size: Size(17.0, 17.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: const Color(0xffe00a17),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.1, 5.6, 3.9, 2.8),
                            size: Size(17.0, 17.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_y52dbu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(6.1, 8.4, 3.9, 2.8),
                            size: Size(17.0, 17.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child: SvgPicture.string(
                              _svg_6xiv0v,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.0, 10.0, 65.0, 16.0),
                    size: Size(111.5, 35.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(14.0, context),
                          color: const Color(0xff0e1116),
                        ),
                        children: [
                          TextSpan(
                            text: 'Categoria',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: const Color(0xffe00a17),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            
            offset: Offset(RicalcoloWidth(41.0, context), RicalcoloHeight(382.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
                  width: RicalcoloWidth(158.0, context),
            height: RicalcoloHeight(35.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 158.0, 35.0),
                    size: Size(158.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x41000000),
                            offset: Offset(0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.0, 10.0, 89.0, 16.0),
                    size: Size(158.0, 35.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Localizzazione',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(114.0, 3.0, 35.0, 24.0),
                    size: Size(158.0, 35.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'on-off' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 9.0, 35.0, 15.0),
                          size: Size(35.0, 24.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: RicalcoloWidth(0.5, context), color: const Color(0xffe00a17)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.0, 11.0, 11.0, 11.0),
                          size: Size(35.0, 24.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffe00a17),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 0.0, 8.0, 7.0),
                          size: Size(35.0, 24.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'On',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(6.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(27.0, 0.0, 8.0, 7.0),
                          size: Size(35.0, 24.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Off',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(6.0, context),
                              color: const Color(0xff0e1116),
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
          ),
          Transform.translate(
            
            offset: Offset(RicalcoloWidth(55.0, context), RicalcoloHeight(22.0, context)),
            child:
                // Adobe XD layer: 'Avanzamento' (group)
                SizedBox(
                  width: RicalcoloWidth(265.0, context),
            height: RicalcoloHeight(8.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.5, 3.5, 82.0, 1.0),
                    size: Size(265.0, 8.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_lceq17,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(91.5, 3.5, 82.0, 1.0),
                    size: Size(265.0, 8.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_7wdbhp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(176.5, 3.5, 82.0, 1.0),
                    size: Size(265.0, 8.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_wq3ots,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(87.0, 0.0, 8.0, 8.0),
                    size: Size(265.0, 8.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 8.0, 8.0),
                    size: Size(265.0, 8.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(172.0, 0.0, 8.0, 8.0),
                    size: Size(265.0, 8.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffc9c9c9),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(257.0, 0.0, 8.0, 8.0),
                    size: Size(265.0, 8.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffc9c9c9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(728.0, context)),
            child:
                // Adobe XD layer: 'menu-dirette' (shape)
                Container(
                  width: RicalcoloWidth(315.0, context),
            height: RicalcoloHeight(58.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/menu-dirette.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(100.0, context), RicalcoloHeight(281.0, context)),
            child:
                // Adobe XD layer: 'fotocamera' (shape)
                Container(
                  width: RicalcoloWidth(36.0, context),
            height: RicalcoloHeight(30.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/fotocamera.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_n5g79b =
    '<svg viewBox="39.5 162.5 296.0 1.0" ><path transform="translate(39.5, 162.5)" d="M 0 0 L 296 0" fill="none" stroke="#e00a17" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_tnikpc =
    '<svg viewBox="6.5 5.3 3.3 2.3" ><path transform="translate(6.45, 5.28)" d="M 0 0 L 3.302294969558716 2.34666895866394" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jym924 =
    '<svg viewBox="6.5 7.6 3.3 2.3" ><path transform="translate(6.45, 7.63)" d="M 0 2.34666895866394 L 3.302294969558716 0" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_y52dbu =
    '<svg viewBox="235.1 733.2 3.9 2.8" ><path transform="translate(235.15, 733.23)" d="M 0 0 L 3.896934986114502 2.769230842590332" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_6xiv0v =
    '<svg viewBox="235.1 736.0 3.9 2.8" ><path transform="translate(235.15, 736.0)" d="M 0 2.769230842590332 L 3.896934986114502 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_lceq17 =
    '<svg viewBox="61.5 25.5 82.0 1.0" ><path transform="translate(61.5, 25.5)" d="M 0 0 L 82 0" fill="none" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_7wdbhp =
    '<svg viewBox="146.5 25.5 82.0 1.0" ><path transform="translate(146.5, 25.5)" d="M 0 0 L 55.734375 0 L 82 0" fill="none" fill-opacity="0.47" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wq3ots =
    '<svg viewBox="231.5 25.5 82.0 1.0" ><path transform="translate(231.5, 25.5)" d="M 0 0 L 82 0" fill="none" fill-opacity="0.47" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
