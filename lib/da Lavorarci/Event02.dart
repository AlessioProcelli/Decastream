import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'Event01.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class Event_02 extends StatelessWidget {
  Event_02({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(260.0, context),RicalcoloHeight(676.0, context)),
            child:
                // Adobe XD layer: 'Avanti' (group)
                PageLink(
              links: [
                /*PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Event_03(),
                ),*/
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
                              offset: Offset(0,  RicalcoloHeight(3.0, context)),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(8.0, 11.0, 52.0, 15.0),
                      size: Size(81.0, 36.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'Riepilogo',
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
            offset: Offset(RicalcoloWidth(29.0, context),RicalcoloHeight(676.0, context)),
            child:
                // Adobe XD layer: 'indietro' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Event01(),
                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(35.0, context),
            height: RicalcoloHeight(36.0, context),

                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 36.0),
                      size: Size(35.0, 36.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
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
                      bounds: Rect.fromLTWH(9.0, 10.0, 17.0, 16.0),
                      size: Size(35.0, 36.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Transform.rotate(
                        angle: 3.1416,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 17.0, 16.0),
                              size: Size(17.0, 16.0),
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
                              bounds: Rect.fromLTWH(7.0, 5.7, 3.7, 2.7),
                              size: Size(17.0, 16.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_4pez0r,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(7.0, 8.4, 3.7, 2.7),
                              size: Size(17.0, 16.0),
                              fixedWidth: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_85r1gw,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(50.0, context),RicalcoloHeight(170.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
              width: RicalcoloWidth(266.0, context),
            height: RicalcoloHeight(35.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 266.0, 35.0),
                    size: Size(266.0, 35.0),
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
                    bounds: Rect.fromLTWH(18.0, 10.0, 74.0, 16.0),
                    size: Size(266.0, 35.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Live ristretta',
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
                    bounds: Rect.fromLTWH(171.0, 10.0, 80.0, 16.0),
                    size: Size(266.0, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Live pubblica',
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
                    bounds: Rect.fromLTWH(114.0, 12.0, 35.0, 15.0),
                    size: Size(266.0, 35.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'on-off' (group)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          transition: LinkTransition.Fade,
                          ease: Curves.easeOut,
                          duration: 0.3,
                          pageBuilder: () => Event_02(),
                        ),
                      ],
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 35.0, 15.0),
                            size: Size(35.0, 15.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
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
                            bounds: Rect.fromLTWH(3.0, 2.0, 11.0, 11.0),
                            size: Size(35.0, 15.0),
                            pinLeft: true,
                            pinTop: true,
                            pinBottom: true,
                            fixedWidth: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffe00a17),
                              ),
                            ),
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
            offset: Offset(RicalcoloWidth(112.0, context),RicalcoloHeight(229.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
                  width: RicalcoloWidth(143.0, context),
            height: RicalcoloHeight(98.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 143.0, 98.0),
                    size: Size(143.0, 98.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(26.0, context),RicalcoloHeight(421.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
                  width: RicalcoloWidth(329.0, context),
            height: RicalcoloHeight(229.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 329.0, 229.0),
                    size: Size(329.0, 229.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(328.0, context),RicalcoloHeight(163.0, context)),
            child: Container(
width: RicalcoloWidth(14.0, context),
            height: RicalcoloHeight(14.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x15000000),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(333.0, context),RicalcoloHeight(166.0, context)),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(153.0, context),RicalcoloHeight(260.0, context)),
            child: Text(
              '100',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(35.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(224.0, context),RicalcoloHeight(276.0, context)),
            child: Container(
width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(126.0, context),RicalcoloHeight(276.0, context)),
            child: Container(
width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(132.5, context),RicalcoloHeight(282.0, context)),
            child: SvgPicture.string(
              _svg_xtnfba,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(151.0, context),RicalcoloHeight(244.0, context)),
            child: Text(
              'Numero di Persone',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(8.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(0.0, context),RicalcoloHeight(-38.0, context)),
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
            offset: Offset(RicalcoloWidth(50.0, context),RicalcoloHeight(49.0, context)),
            child: Text(
              'Step 2',
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
            offset: Offset(RicalcoloWidth(50.0, context),RicalcoloHeight(95.0, context)),
            child: Text(
              'Chi vuoi far entrare?',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 14,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(55.0, context),RicalcoloHeight(24.0, context)),
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
                      _svg_35fdi6,
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
                        color: const Color(0xffffffff),
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
            offset: Offset(RicalcoloWidth(106.0, context),RicalcoloHeight(361.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
              width: RicalcoloWidth(164.0, context),
            height: RicalcoloHeight(39.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 164.0, 39.0),
                    size: Size(164.0, 39.0),
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
                    bounds: Rect.fromLTWH(16.0, 11.0, 72.0, 18.0),
                    size: Size(164.0, 39.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Filtro utenti',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(15.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(109.0, 4.0, 39.0, 27.0),
                    size: Size(164.0, 39.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'on-off' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 10.0, 39.0, 17.0),
                          size: Size(39.0, 27.0),
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
                          bounds: Rect.fromLTWH(5.0, 13.0, 12.0, 12.0),
                          size: Size(39.0, 27.0),
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
                          bounds: Rect.fromLTWH(5.0, 0.0, 8.0, 7.0),
                          size: Size(39.0, 27.0),
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
                          bounds: Rect.fromLTWH(30.0, 0.0, 8.0, 7.0),
                          size: Size(39.0, 27.0),
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
            offset: Offset(RicalcoloWidth(37.0, context),RicalcoloHeight(439.0, context)),
            child:
                // Adobe XD layer: 'Categoria' (group)
                SizedBox(
                  width: RicalcoloWidth(293.0, context),
            height: RicalcoloHeight(63.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(202.0, 2.0, 14.0, 14.0),
                    size: Size(293.0, 63.0),
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
                    bounds: Rect.fromLTWH(0.0, 34.0, 85.0, 29.0),
                    size: Size(293.0, 63.0),
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
                                  offset: Offset(0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.0, 8.0, 35.0, 14.0),
                          size: Size(85.0, 29.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Maschi',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(104.0, 34.0, 85.0, 29.0),
                    size: Size(293.0, 63.0),
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
                                  offset: Offset(0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(11.0, 8.0, 46.0, 14.0),
                          size: Size(85.0, 29.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Femmine',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(208.0, 34.0, 85.0, 29.0),
                    size: Size(293.0, 63.0),
                    pinRight: true,
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
                                  offset: Offset(0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(10.0, 8.0, 44.0, 14.0),
                          size: Size(85.0, 29.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Entrambi',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(12.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(62.0, 42.0, 13.0, 13.0),
                    size: Size(293.0, 63.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                          width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(166.0, 42.0, 13.0, 13.0),
                    size: Size(293.0, 63.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffe00a17),
                        border: Border.all(
                          width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(270.0, 42.0, 13.0, 13.0),
                    size: Size(293.0, 63.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                          width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(108.0, 0.0, 86.0, 16.0),
                    size: Size(293.0, 63.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Scegli il genere',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
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
            offset: Offset(RicalcoloWidth(277.0, context),RicalcoloHeight(354.0, context)),
            child:
                // Adobe XD layer: 'question' (group)
                SizedBox(
                  width: RicalcoloWidth(14.0, context),
            height: RicalcoloHeight(14.0, context),
              child: Stack(
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
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(108.0, context),RicalcoloHeight(536.0, context)),
            child:
                // Adobe XD layer: 'Localizzazione' (group)
                SizedBox(
                  width: RicalcoloWidth(165.0, context),
            height: RicalcoloHeight(75.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 165.0, 75.0),
                    size: Size(165.0, 75.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(166.0, context),RicalcoloHeight(574.0, context)),
            child: Text(
              '16',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(216.0, context),RicalcoloHeight(574.0, context)),
            child: Text(
              '18',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(133.0, context),RicalcoloHeight(575.0, context)),
            child: Text(
              'Da',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(197.0, context),RicalcoloHeight(575.0, context)),
            child: Text(
              'a',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(159.0, context),RicalcoloHeight(595.5, context)),
            child: SvgPicture.string(
              _svg_fjnls6,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(108.0, context),RicalcoloHeight(536.0, context)),
            child: Container(
              width: RicalcoloWidth(165.0, context),
            height: RicalcoloHeight(27.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(168.0, context),RicalcoloHeight(544.0, context)),
            child: Text(
              'Target età',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(9.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(277.0, context),RicalcoloHeight(543.0, context)),
            child:
                // Adobe XD layer: 'question' (group)
                SizedBox(
                  width: RicalcoloWidth(14.0, context),
            height: RicalcoloHeight(14.0, context),
              child: Stack(
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
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
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
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context),RicalcoloHeight(728.0, context)),
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
        ],
      ),
    );
  }
}

const String _svg_tnikpc =
    '<svg viewBox="6.5 5.3 3.3 2.3" ><path transform="translate(6.45, 5.28)" d="M 0 0 L 3.302294969558716 2.34666895866394" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jym924 =
    '<svg viewBox="6.5 7.6 3.3 2.3" ><path transform="translate(6.45, 7.63)" d="M 0 2.34666895866394 L 3.302294969558716 0" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_4pez0r =
    '<svg viewBox="7.3 5.0 3.7 2.7" ><path transform="translate(7.29, 4.95)" d="M 0 0 L 3.746739625930786 2.662499189376831" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_85r1gw =
    '<svg viewBox="7.3 7.6 3.7 2.7" ><path transform="translate(7.29, 7.62)" d="M 0 2.662499189376831 L 3.746739625930786 0" fill="none" stroke="#ffffff" stroke-width="0.699999988079071" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_xtnfba =
    '<svg viewBox="132.5 282.0 103.0 19.5" ><path transform="translate(153.5, 301.5)" d="M 0 0 L 61 0" fill="none" stroke="#0e1116" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(232.92, 281.98)" d="M 0 0 L 0 5" fill="none" stroke="#ffffff" stroke-width="0.800000011920929" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(230.5, 284.5)" d="M 5 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="0.800000011920929" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(132.5, 284.5)" d="M 5 0 L 0 0" fill="none" stroke="#ffffff" stroke-width="0.800000011920929" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_lceq17 =
    '<svg viewBox="61.5 25.5 82.0 1.0" ><path transform="translate(61.5, 25.5)" d="M 0 0 L 82 0" fill="none" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_35fdi6 =
    '<svg viewBox="146.5 25.5 82.0 1.0" ><path transform="translate(146.5, 25.5)" d="M 0 0 L 55.734375 0 L 82 0" fill="none" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wq3ots =
    '<svg viewBox="231.5 25.5 82.0 1.0" ><path transform="translate(231.5, 25.5)" d="M 0 0 L 82 0" fill="none" fill-opacity="0.47" stroke="#ffffff" stroke-width="1.2999999523162842" stroke-opacity="0.47" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_fjnls6 =
    '<svg viewBox="159.5 595.5 83.0 1.0" ><path transform="translate(159.5, 595.5)" d="M 0 0 L 33 0" fill="none" stroke="#0e1116" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(209.5, 595.5)" d="M 0 0 L 33 0" fill="none" stroke="#0e1116" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
