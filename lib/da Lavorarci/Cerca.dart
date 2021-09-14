/*import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';
//originale

class Cerca extends StatelessWidget {
  Cerca({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(31.0, context), RicalcoloHeight(30.0, context)),
            child:
                // Adobe XD layer: 'cerca' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,

                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(249.0, context),
            height: RicalcoloHeight(30.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 249.0, 30.0),
                      size: Size(249.0, 30.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        child:TextFormField(

                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize:RicalcoloWidth(15.0, context),
                            color: const Color(0x3a0e1116),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x4e000000),
                              offset: Offset(RicalcoloWidth(0.0, context), RicalcoloHeight(3.0, context)),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(12.3, 6.5, 17.9, 18.0),
                      size: Size(249.0, 30.0),
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
                                    _svg_97ad7z,
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
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.5, context), RicalcoloHeight(72.0, context)),
            child:
                // Adobe XD layer: 'Boh' (group)
                SizedBox(
              width: RicalcoloWidth(160.0, context),
            height: RicalcoloHeight(20.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.5, 0.0, 31.0, 16.0),
                    size: Size(159.5, 19.5),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Tutto',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(63.5, 0.0, 25.0, 16.0),
                    size: Size(159.5, 19.5),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Live',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                       fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(105.5, 0.0, 54.0, 16.0),
                    size: Size(159.5, 19.5),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Venditori',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 19.5, 52.0, 1.0),
                    size: Size(159.5, 19.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_yx6sbp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
    
            offset: Offset(RicalcoloWidth(195.0, context), RicalcoloHeight(345.0, context)),
            child:
                // Adobe XD layer: 'profilo' (group)
                SizedBox(
              width: RicalcoloWidth(173.0, context),
            height: RicalcoloHeight(118.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 35.0, 173.0, 83.0),
                    size: Size(173.0, 118.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(57.0, 0.0, 60.0, 60.0),
                    size: Size(173.0, 118.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'o.588423' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: const AssetImage("assets/image/o.588432.png"),
                          fit: BoxFit.cover,
                        ),
                        border: Border.all(
                            width: RicalcoloWidth(249.0, context), color: const Color(0xffe00a17)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(70.0, 53.0, 33.0, 15.0),
                    size: Size(173.0, 118.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 33.0, 15.0),
                          size: Size(33.0, 15.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 4.0, 8.0, 8.0),
                          size: Size(33.0, 15.0),
                          pinLeft: true,
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
                          bounds: Rect.fromLTWH(14.0, 4.0, 14.0, 9.0),
                          size: Size(33.0, 15.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'LIVE',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(7.0, context),
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
                    bounds: Rect.fromLTWH(31.0, 71.0, 108.0, 19.0),
                    size: Size(173.0, 118.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Chiara Ferragni',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(16.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(124.0, 47.0, 38.0, 13.0),
                    size: Size(173.0, 118.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
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
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(3.0, context),
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
                                image: const AssetImage("assets/image/stelle.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 96.0, 131.0, 10.0),
                    size: Size(173.0, 118.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tag' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 37.0, 10.0),
                          size: Size(131.0, 10.0),
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
                          bounds: Rect.fromLTWH(47.0, 0.0, 37.0, 10.0),
                          size: Size(131.0, 10.0),
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
                          bounds: Rect.fromLTWH(94.0, 0.0, 37.0, 10.0),
                          size: Size(131.0, 10.0),
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
                          bounds: Rect.fromLTWH(3.0, 2.0, 31.0, 6.0),
                          size: Size(131.0, 10.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Abbigliamento',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(5.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(51.0, 2.0, 31.0, 6.0),
                          size: Size(131.0, 10.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Abbigliamento',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(5.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(98.0, 2.0, 31.0, 6.0),
                          size: Size(131.0, 10.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Abbigliamento',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(5.0, context),
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
            offset: Offset(RicalcoloWidth(16.0, context), RicalcoloHeight(126.0, context)),
            child:
                // Adobe XD layer: 'evento 3' (group)
                SizedBox(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_r6iufm,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 92.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pistoia-panorama' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          image: const AssetImage("assets/image/pistoia-panorama.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 99.0, 78.0, 16.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Vini a Pistoia',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 115.0, 47.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'by Chiara Ferragni',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 132.0, 91.0, 31.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(34.0, 143.0, 42.0, 9.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'WATCH NOW',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(7.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(120.0, 133.0, 27.0, 28.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xadf5f5f5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(149.0, 8.0, 11.0, 11.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(126.0, 149.0, 15.0, 5.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'PISTOIA',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(4.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(154.0, 10.0, 1.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'i',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(130.0, 138.0, 7.0, 9.0),
                    size: Size(169.0, 174.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'geo' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage("assets/image/geo.png"),
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
            offset: Offset(RicalcoloWidth(195.0, context), RicalcoloHeight(126.0, context)),
            child:
                // Adobe XD layer: 'evento 1' (group)
                SizedBox(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 92.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'napoli' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          image: const AssetImage("assets/image/napoli.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 99.0, 96.0, 16.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Scarpe a Napoli',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 115.0, 47.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'by Chiara Ferragni',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 132.0, 91.0, 31.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(34.0, 143.0, 42.0, 9.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'WATCH NOW',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(7.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(120.0, 133.0, 27.0, 28.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xadf5f5f5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(149.0, 8.0, 11.0, 11.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(127.0, 150.0, 14.0, 5.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'NAPOLI',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(4.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(154.0, 10.0, 1.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'i',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(130.0, 138.0, 7.0, 9.0),
                    size: Size(169.0, 174.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'geo' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage("assets/image/geo.png"),
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
            offset: Offset(RicalcoloWidth(195.0, context), RicalcoloHeight(494.0, context)),
            child:
                // Adobe XD layer: 'evento 2' (group)
                SizedBox(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(174.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 174.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 92.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Milano-Galleria-Vit…' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        image: DecorationImage(
                          image: const AssetImage("assets/image/Milano.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 99.0, 88.0, 16.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Felpe a Milano',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(14.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 115.0, 47.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'by Chiara Ferragni',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 132.0, 91.0, 31.0),
                    size: Size(169.0, 174.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(34.0, 143.0, 42.0, 9.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'WATCH NOW',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(7.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(120.0, 133.0, 27.0, 28.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xadf5f5f5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(149.0, 8.0, 11.0, 11.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(126.0, 150.0, 15.0, 5.0),
                    size: Size(169.0, 174.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'MILANO',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(4.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(154.0, 10.0, 1.0, 7.0),
                    size: Size(169.0, 174.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'i',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
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
          Transform.translate(
            
            offset: Offset(RicalcoloWidth(16.0, context), RicalcoloHeight(333.0, context)),
            child:
                // Adobe XD layer: 'live' (group)
                SizedBox(
              width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(279.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 5.0, 169.0, 274.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 169.0, 205.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'maxresdefault' (shape)
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                          image: const AssetImage("assets/image/maxresdefault.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(126.0, 5.0, 33.0, 15.0),
                    size: Size(169.0, 279.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 33.0, 15.0),
                          size: Size(33.0, 15.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 4.0, 8.0, 8.0),
                          size: Size(33.0, 15.0),
                          pinLeft: true,
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
                          bounds: Rect.fromLTWH(14.0, 4.0, 14.0, 9.0),
                          size: Size(33.0, 15.0),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'LIVE',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize:RicalcoloWidth(7.0, context),
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
                    bounds: Rect.fromLTWH(14.0, 238.0, 47.0, 7.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'by Chiara Ferragni',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(6.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(13.0, 217.0, 144.0, 19.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'New collection Ferry',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(16.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 249.0, 42.0, 19.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: const Color(0xadf5f5f5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(30.0, 256.0, 18.0, 6.0),
                    size: Size(169.0, 279.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'PISTOIA',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(5.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(76.0, 246.0, 75.0, 22.0),
                    size: Size(169.0, 279.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(93.0, 253.0, 42.0, 9.0),
                    size: Size(169.0, 279.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'WATCH NOW',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize:RicalcoloWidth(7.0, context),
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 254.0, 7.0, 9.0),
                    size: Size(169.0, 279.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'geo' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage("assets/image/geo.png"),
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
            offset: Offset(RicalcoloWidth(292.0, context), RicalcoloHeight(30.0, context)),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,

                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(32.0, context),
            height: RicalcoloHeight(30.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 30.0),
                      size: Size(32.0, 30.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'classifica' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 30.0),
                            size: Size(32.0, 30.0),
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
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(6.0, 5.0, 20.0, 19.0),
                      size: Size(32.0, 30.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'mondo' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage("assets/image/mondo.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(332.0, context), RicalcoloHeight(30.0, context)),
            child:
                // Adobe XD layer: 'classifica' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,

                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(32.0, context),
            height: RicalcoloHeight(30.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 30.0),
                      size: Size(32.0, 30.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'classifica' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 32.0, 30.0),
                            size: Size(32.0, 30.0),
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
                        ],
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(7.0, 6.0, 18.0, 18.0),
                      size: Size(32.0, 30.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'classifica' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage("assets/image/classifica.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(RicalcoloWidth(18.0, context), RicalcoloHeight(728.0, context)),
            child:
                // Adobe XD layer: 'menuCerca' (shape)
                Container(
              width: RicalcoloWidth(327.0, context),
            height: RicalcoloHeight(58.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/menuCerca.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(325.0, context), RicalcoloHeight(633.0, context)),
            child:
                // Adobe XD layer: 'geo' (shape)
                Container(
              width: RicalcoloWidth(7.0, context),
            height: RicalcoloHeight(8.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/geo.png"),
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

const String _svg_97ad7z =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#000000" fill-opacity="0.32" stroke="none" stroke-width="1" stroke-opacity="0.32" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yx6sbp =
    '<svg viewBox="43.5 91.5 52.0 1.0" ><path transform="translate(43.5, 91.5)" d="M 0 0 L 52 0" fill="none" stroke="#e00a17" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_r6iufm =
    '<svg viewBox="0.0 0.0 169.0 174.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path  d="M 20 0 L 149 0 C 160.0457000732422 0 169 8.954304695129395 169 20 L 169 154 C 169 165.0457000732422 160.0457000732422 174 149 174 L 20 174 C 8.954304695129395 174 0 165.0457000732422 0 154 L 0 20 C 0 8.954304695129395 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
*/