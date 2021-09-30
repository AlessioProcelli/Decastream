import 'package:everstream/appuntamento2.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Ridimensiona.dart';

class appuntamento1 extends StatelessWidget {
  appuntamento1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(0.0, context), RicalcoloHeight(448.0, context)),
            child: Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(449.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -75.0),

            child: Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(380.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(26.0, context), RicalcoloHeight(221.0, context)),
            child: Container(
              width: RicalcoloWidth(323.0, context),
            height: RicalcoloHeight(371.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(65.0, context), RicalcoloHeight(248.0, context)),

            child: Text(
              'L',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(17.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(58.0, context), RicalcoloHeight(544.0, context)),
            child: Text(
              'Annulla',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                 fontSize: RicalcoloWidth(14.0, context),
                color: const Color(0xffe00a17),
              ),
              textAlign: TextAlign.left,
            ),
          ),


          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(265.0, context),top: RicalcoloHeight(530.0, context)),
            child: ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => appuntamento2());
                Navigator.push(context, route);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                primary: Color(0xffe00a17),
                onPrimary: Colors.white,
                fixedSize: Size(RicalcoloWidth(68.0, context), RicalcoloHeight(37.0, context)),
                elevation: 8,
              ),
              child: Text(
                'Avanti',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(12.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),


          Transform.translate(
            offset: Offset(RicalcoloWidth(58.0, context), RicalcoloHeight(71.0, context)),
            child: Text(
              'Prenota adesso\nla tua videocall',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(36.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(58.0, context), RicalcoloHeight(252.0, context)),
            child:
                // Adobe XD layer: 'IMG_1269' (shape)
                Container(
              width: RicalcoloWidth(259.0, context),
            height: RicalcoloHeight(237.5, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/calendario.jpg"), //la devi mettere te
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(36.0, context), RicalcoloHeight(34.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(303.0, context),
            height: RicalcoloHeight(9.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 97.0, 1.0),
                    size: Size(302.5, 9.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ktq9um,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(99.0, 4.5, 97.0, 1.0),
                    size: Size(302.5, 9.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_ice0k7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(200.0, 4.5, 95.0, 1.0),
                    size: Size(302.5, 9.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_dpqrrr,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(94.5, 0.0, 9.0, 9.0),
                    size: Size(302.5, 9.0),
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
                    bounds: Rect.fromLTWH(193.5, 0.0, 9.0, 9.0),
                    size: Size(302.5, 9.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffe00a17),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(293.5, 0.0, 9.0, 9.0),
                    size: Size(302.5, 9.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffe00a17),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(193.5, 0.0, 9.0, 9.0),
                    size: Size(302.5, 9.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x8affffff),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(293.5, 0.0, 9.0, 9.0),
                    size: Size(302.5, 9.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x8affffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ktq9um =
    '<svg viewBox="40.5 38.5 97.0 1.0" ><path transform="translate(40.5, 38.5)" d="M 0 0 L 97 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ice0k7 =
    '<svg viewBox="139.5 38.5 97.0 1.0" ><path transform="translate(139.5, 38.5)" d="M 0 0 L 97 0" fill="none" fill-opacity="0.54" stroke="#ffffff" stroke-width="3" stroke-opacity="0.54" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_dpqrrr =
    '<svg viewBox="240.5 38.5 95.0 1.0" ><path transform="translate(240.5, 38.5)" d="M 0 0 L 95 0" fill="none" fill-opacity="0.54" stroke="#ffffff" stroke-width="3" stroke-opacity="0.54" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
