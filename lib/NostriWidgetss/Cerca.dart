import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:image_picker/image_picker.dart';
import '../main.dart';
import 'package:everstream/ProfiloAzienda.dart';
import 'package:everstream/Controller.dart';

class Cerca extends StatelessWidget {


  Cerca({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(31.0, context), RicalcoloHeight(49.0, context)),
            child:
                // Adobe XD layer: 'cerca' (group)
                SizedBox(
              width: RicalcoloWidth(207.0, context),
            height: RicalcoloHeight(30.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 207.0, 30.0),
                    size: Size(207.0, 30.0),
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
                            color: const Color(0x4e000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.3, 6.5, 17.9, 18.0),
                    size: Size(207.0, 30.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'loupe' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 17.9, 18.0),
                          size: Size(17.9, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 17.9, 18.0),
                                size: Size(17.9, 18.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_8l61jc,
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
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(9.0, context), RicalcoloHeight(401.0, context)),
            child: Container(
              width: RicalcoloWidth(173.0, context),
            height: RicalcoloHeight(83.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x52000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(66.0, context), RicalcoloHeight(366.0, context)),

            child:
                // Adobe XD layer: 'nuovo-logo-pistoia-…' (shape)
                Container(
              width: RicalcoloWidth(60.0, context),
            height: RicalcoloHeight(60.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  //TODO PTB.JPEG
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 0.7, color: const Color(0xffe00a17)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(46.0, context), RicalcoloHeight(432.0, context)),
            child: Text(
              'Pistoia Basket',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(133.0, context), RicalcoloHeight(413.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(13.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 15.0, 4.0),
                    size: Size(38.0, 13.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Valutazione',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(3.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.0, 38.0, 7.0),
                    size: Size(38.0, 13.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'stelle' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          //TODO STELLE.PNG
                          image: NetworkImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(145.0, context)),
            child: Container(
              width: RicalcoloWidth(173.0, context),
            height: RicalcoloHeight(83.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x52000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(247.0, context), RicalcoloHeight(110.0, context)),
            child:
                // Adobe XD layer: 'versace-logo' (shape)
                Container(
              width: RicalcoloWidth(60.0, context),
            height: RicalcoloHeight(60.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  //TODO versace.jpeg
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: RicalcoloWidth(0.7, context), color: const Color(0xff0e1116),
              ),
            ),
          ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(219.0, context), RicalcoloHeight(179.0, context)),
            child: Text(
              'Versace Milano',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(314.0, context), RicalcoloHeight(157.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(13.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 15.0, 4.0),
                    size: Size(38.0, 13.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Valutazione',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(3.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.0, 38.0, 7.0),
                    size: Size(38.0, 13.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'stelle' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            // TODO stelle.png
                          image: NetworkImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(210.0, context), RicalcoloHeight(206.0, context)),
            child:
                // Adobe XD layer: 'tag' (group)
                SizedBox(
              width: RicalcoloWidth(136.0, context),
            height: RicalcoloHeight(10.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 41.0, 10.0),
                    size: Size(136.0, 10.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3e000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(48.0, 0.0, 41.0, 10.0),
                    size: Size(136.0, 10.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3e000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(95.0, 0.0, 41.0, 10.0),
                    size: Size(136.0, 10.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3e000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(2.0, 2.0, 36.0, 6.0),
                    size: Size(136.0, 10.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '#Abbigliamento',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(5.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(50.0, 2.0, 36.0, 6.0),
                    size: Size(136.0, 10.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '#Abbigliamento',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(5.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(97.0, 2.0, 36.0, 6.0),
                    size: Size(136.0, 10.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '#Abbigliamento',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(5.0, context),
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
          /*Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(157.0, context)),
            child: Container(
              width: RicalcoloWidth(169.0, context),
              height: RicalcoloHeight(174.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0xffffffff),
                border: Border.all(
                  width: RicalcoloWidth(1.0, context),
                  color: const Color(0xffe00a17),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                      blurRadius: 6,
                    ),
                  ],
                ),
            ),
          ),
              ),*/
          //riesci a cambiare te qui? perchè ho visto ora che non ho cambiato le telecamere con sfondo nero in png
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(157.0, context)),
            child: SvgPicture.string(
              _svg_w3eh6j,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(157.0, context)),
            child:
                // Adobe XD layer: 'default' (shape)
                Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  //TODO cupertino.jpeg
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(23.0, context), RicalcoloHeight(253.0, context)),
            child: Text(
              'Apple Cupertino',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(14.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(131.0, context), RicalcoloHeight(299.0, context)),
            child: Container(
              width: RicalcoloWidth(27.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(162.0, context), RicalcoloHeight(165.0, context)),
            child: Container(
              width: RicalcoloWidth(11.0, context),
            height: RicalcoloHeight(11.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(133.0, context), RicalcoloHeight(315.0, context)),
            child: Text(
              'CALIFORNIA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(4.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(167.0, context), RicalcoloHeight(167.0, context)),
            child: Text(
              'i',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(141.0, context), RicalcoloHeight(304.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(7.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(37.0, context), RicalcoloHeight(299.0, context)),
            child: Container(
              width: RicalcoloWidth(72.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff0e1116),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(248.0, context)),
            child: Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0xffffffff),
                border: Border.all(width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(248.0, context)),
            child: SvgPicture.string(
              _svg_2fwa5j,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(248.0, context)),
            child:
                // Adobe XD layer: 'fragni' (shape)
                Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  //TODO fagni.jpeg
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(200.0, context), RicalcoloHeight(344.0, context)),
            child: Text(
              'Fagni Pistoia',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(14.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(308.0, context), RicalcoloHeight(390.0, context)),
            child: Container(
              width: RicalcoloWidth(27.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(399.0, context), RicalcoloHeight(256.0, context)),
            child: Container(
              width: RicalcoloWidth(11.0, context),
            height: RicalcoloHeight(11.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(314.0, context), RicalcoloHeight(406.0, context)),
            child: Text(
              'PISTOIA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(4.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(344.0, context), RicalcoloHeight(258.0, context)),
            child: Text(
              'i',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(318.0, context), RicalcoloHeight(395.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(7.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TOTO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(214.0, context), RicalcoloHeight(390.0, context)),
            child: Container(
              width: RicalcoloWidth(72.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff0e1116),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(458.0, context)),
            child: Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe00a17)),
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
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(458.0, context)),
            child: SvgPicture.string(
              _svg_r4s5id,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(190.0, context), RicalcoloHeight(458.0, context)),
            child:
                // Adobe XD layer: 'letto' (shape)
                Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  // TODO letto.jpeg
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(201.0, context), RicalcoloHeight(558.0, context)),
            child: Text(
              'PerDormire Pistoia',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(12.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(308.0, context), RicalcoloHeight(600.0, context)),
            child: Container(
              width: RicalcoloWidth(27.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(339.0, context), RicalcoloHeight(466.0, context)),
            child: Container(
              width: RicalcoloWidth(11.0, context),
            height: RicalcoloHeight(11.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(314.0, context), RicalcoloHeight(616.0, context)),
            child: Text(
              'PISTOIA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(4.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(344.0, context), RicalcoloHeight(468.0, context)),
            child: Text(
              'i',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(318.0, context), RicalcoloHeight(605.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(7.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(209.0, context), RicalcoloHeight(600.0, context)),
            child: Container(
              width: RicalcoloWidth(72.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff0e1116),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(11.0, context), RicalcoloHeight(512.0, context)),
            child: Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe00a17)),
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
            offset: Offset(RicalcoloWidth(11.0, context), RicalcoloHeight(512.0, context)),
            child: SvgPicture.string(
              _svg_xyw85b,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(11.0, context), RicalcoloHeight(512.0, context)),
            child:
                // Adobe XD layer: 'nike' (shape)
                Container(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  //TODO NIKE.PNG
                  image: NetworkImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(22.0, context), RicalcoloHeight(612.0, context)),
            child: Text(
              'Nike Milano',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(12.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(129.0, context), RicalcoloHeight(654.0, context)),
            child: Container(
              width: RicalcoloWidth(27.0, context),
            height: RicalcoloHeight(28.0, context),
                            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(160.0, context), RicalcoloHeight(520.0, context)),
            child: Container(
              width: RicalcoloWidth(11.0, context),
            height: RicalcoloHeight(11.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(136.0, context), RicalcoloHeight(670.0, context)),
            child: Text(
              'MILANO',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(4.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(165.0, context), RicalcoloHeight(522.0, context)),
            child: Text(
              'i',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(139.0, context), RicalcoloHeight(659.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(7.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(654.0, context)),
            child: Container(
              width: RicalcoloWidth(72.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xff0e1116),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3b000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(70.0, context), RicalcoloHeight(56.0, context)),
            child: Text(
              'Cerca…',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(14.0, context),
                color: const Color(0x520e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(255.0, context), RicalcoloHeight(49.0, context)),
            child: Container(
              width: RicalcoloWidth(77.0, context),
            height: RicalcoloHeight(30.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(277.0, context), RicalcoloHeight(58.0, context)),
            child: Text(
              'FILTRA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(11.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(278.0, context)),
            child: Container(
              width: RicalcoloWidth(40.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(

            offset: Offset(RicalcoloWidth(77.0, context), RicalcoloHeight(278.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(124.0, context), RicalcoloHeight(278.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(32.0, context), RicalcoloHeight(280.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(80.0, context), RicalcoloHeight(280.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(127.0, context), RicalcoloHeight(280.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(209.0, context), RicalcoloHeight(369.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(256.0, context), RicalcoloHeight(369.0, context)),
            child: Container(
              width: RicalcoloWidth(4.0, context),
              height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(303.0, context), RicalcoloHeight(369.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
              height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(211.0, context), RicalcoloHeight(371.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(259.0, context), RicalcoloHeight(371.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(306.0, context), RicalcoloHeight(371.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(207.0, context), RicalcoloHeight(579.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(254.0, context), RicalcoloHeight(579.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(301.0, context), RicalcoloHeight(579.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(209.0, context), RicalcoloHeight(581.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(257.0, context), RicalcoloHeight(581.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(304.0, context), RicalcoloHeight(581.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(28.0, context), RicalcoloHeight(635.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(75.0, context), RicalcoloHeight(635.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(122.0, context), RicalcoloHeight(635.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(637.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(78.0, context), RicalcoloHeight(637.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(125.0, context), RicalcoloHeight(637.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(28.0, context), RicalcoloHeight(461.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(75.0, context), RicalcoloHeight(461.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(122.0, context), RicalcoloHeight(461.0, context)),
            child: Container(
              width: RicalcoloWidth(41.0, context),
            height: RicalcoloHeight(10.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(463.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(78.0, context), RicalcoloHeight(463.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(125.0, context), RicalcoloHeight(463.0, context)),
            child: Text(
              '#Abbigliamento',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(5.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(142.0, context), RicalcoloHeight(258.0, context)),
            child: Text(
              'Valutazione',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(132.0, context), RicalcoloHeight(264.0, context)),
            child:
                // Adobe XD layer: 'stelle' (shape)
                Container(
                            width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO stelle.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(319.0, context), RicalcoloHeight(349.0, context)),
            child: Text(
              'Valutazione',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(309.0, context), RicalcoloHeight(355.0, context)),
            child:
                // Adobe XD layer: 'stelle' (shape)
                Container(
                            width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO stelle.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(319.0, context), RicalcoloHeight(559.0, context)),
            child: Text(
              'Valutazione',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(

            offset: Offset(RicalcoloWidth(309.0, context), RicalcoloHeight(565.0, context)),
            child:
                // Adobe XD layer: 'stelle' (shape)
                Container(
                            width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO stelle.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(140.0, context), RicalcoloHeight(613.0, context)),
            child: Text(
              'Valutazione',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(130.0, context), RicalcoloHeight(619.0, context)),
            child:
                // Adobe XD layer: 'stelle' (shape)
                Container(
    width: RicalcoloWidth(38.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO stelle.png
                image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(90.0, context), RicalcoloHeight(242.0, context)),
            child: Container(
                            width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(96.0, context), RicalcoloHeight(242.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(102.0, context), RicalcoloHeight(242.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(267.0, context), RicalcoloHeight(333.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(273.0, context), RicalcoloHeight(333.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(279.0, context), RicalcoloHeight(333.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(267.0, context), RicalcoloHeight(543.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(273.0, context), RicalcoloHeight(543.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(279.0, context), RicalcoloHeight(543.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(88.0, context), RicalcoloHeight(597.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(94.0, context), RicalcoloHeight(597.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(100.0, context), RicalcoloHeight(597.0, context)),
            child: Container(
              width: RicalcoloWidth(3.0, context),
            height: RicalcoloHeight(3.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x71ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(207.0, context), RicalcoloHeight(153.0, context)),
            child: Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(23.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(209.0, context), RicalcoloHeight(166.0, context)),
            child: Text(
              'CALIFORNIA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(215.0, context), RicalcoloHeight(157.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(6.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(24.0, context), RicalcoloHeight(408.0, context)),
            child: Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(23.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xadf5f5f5),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(421.0, context)),
            child: Text(
              'PISTOIA',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(3.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(32.0, context), RicalcoloHeight(412.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(6.0, context),
            height: RicalcoloHeight(7.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO geo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(211.0, context), RicalcoloHeight(744.0, context)),
            child:
                // Adobe XD layer: 'messaggi' (shape)
                Container(
                            width: RicalcoloWidth(36.0, context),
            height: RicalcoloHeight(27.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO messaggi.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(138.0, context), RicalcoloHeight(739.0, context)),
            child:
                // Adobe XD layer: 'acquisti' (shape)
                Container(
                            width: RicalcoloWidth(28.0, context),
            height: RicalcoloHeight(36.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO acquisti.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(48.0, context), RicalcoloHeight(729.0, context)),
            child:
                // Adobe XD layer: 'cercaRED' (shape)
                Container(
                            width: RicalcoloWidth(56.0, context),
            height: RicalcoloHeight(57.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO caricaRED.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(298.0, context), RicalcoloHeight(740.0, context)),            child:
                // Adobe XD layer: 'profilo' (shape)
                Container(
                            width: RicalcoloWidth(29.0, context),
            height: RicalcoloHeight(35.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO profilo.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(63.0, context), RicalcoloHeight(664.0, context)),
            child:
                // Adobe XD layer: 'videocameraWHITE' (shape)
                Container(
                            width: RicalcoloWidth(15.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO videocameraWHITE.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(239.0, context), RicalcoloHeight(610.0, context)),
            child:
                // Adobe XD layer: 'videocameraWHITE' (shape)
                Container(
                            width: RicalcoloWidth(15.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO videocameraWHITE.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(242.0, context), RicalcoloHeight(400.0, context)),
            child:
                // Adobe XD layer: 'videocameraWHITE' (shape)
                Container(
                            width: RicalcoloWidth(16.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO videocameraWHITE.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(65.0, context), RicalcoloHeight(309.0, context)),
            child:
                // Adobe XD layer: 'videocameraWHITE' (shape)
                Container(
                            width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(9.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //TODO videocameraWHITE.png
                  image: NetworkImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],

    );
  }
}

const String _svg_8l61jc =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#e00a17" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w3eh6j =
    '<svg viewBox="13.0 157.0 169.0 182.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(13.0, 157.0)" d="M 20 0 L 149 0 C 160.0457000732422 0 169 9.363467216491699 169 20.91388893127441 L 169 161.0369415283203 C 169 172.5873718261719 160.0457000732422 181.9508361816406 149 181.9508361816406 L 20 181.9508361816406 C 8.954304695129395 181.9508361816406 0 172.5873718261719 0 161.0369415283203 L 0 20.91388893127441 C 0 9.363467216491699 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_2fwa5j =
    '<svg viewBox="190.0 248.0 169.0 182.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.0, 248.0)" d="M 20 0 L 149 0 C 160.0457000732422 0 169 9.363467216491699 169 20.91388893127441 L 169 161.0369415283203 C 169 172.5873718261719 160.0457000732422 181.9508361816406 149 181.9508361816406 L 20 181.9508361816406 C 8.954304695129395 181.9508361816406 0 172.5873718261719 0 161.0369415283203 L 0 20.91388893127441 C 0 9.363467216491699 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_r4s5id =
    '<svg viewBox="190.0 458.0 169.0 182.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.0, 458.0)" d="M 20 0 L 149 0 C 160.0457000732422 0 169 9.363467216491699 169 20.91388893127441 L 169 161.0369415283203 C 169 172.5873718261719 160.0457000732422 181.9508361816406 149 181.9508361816406 L 20 181.9508361816406 C 8.954304695129395 181.9508361816406 0 172.5873718261719 0 161.0369415283203 L 0 20.91388893127441 C 0 9.363467216491699 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_xyw85b =
    '<svg viewBox="11.0 512.0 169.0 182.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(11.0, 512.0)" d="M 20 0 L 149 0 C 160.0457000732422 0 169 9.363467216491699 169 20.91388893127441 L 169 161.0369415283203 C 169 172.5873718261719 160.0457000732422 181.9508361816406 149 181.9508361816406 L 20 181.9508361816406 C 8.954304695129395 181.9508361816406 0 172.5873718261719 0 161.0369415283203 L 0 20.91388893127441 C 0 9.363467216491699 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
