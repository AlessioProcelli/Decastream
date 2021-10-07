import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Metodi/Ridimensiona.dart';

class appuntamento3 extends StatelessWidget {
  appuntamento3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0,RicalcoloHeight(448.0, context)),
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
            offset: Offset(0.0,RicalcoloHeight(-75.0, context)),
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
            height: RicalcoloHeight(421.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,RicalcoloHeight(3.0, context)),
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
            offset: Offset(RicalcoloWidth(57.0, context), RicalcoloHeight(594.0, context)),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(72.0, context), RicalcoloHeight(97.0, context)),
            child: Text(
              'Riepilogo',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(53.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(104.0, context), RicalcoloHeight(550.0, context)),
            child: Text(
              'l’appuntamento è di massimo 30 min',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xffe00a17),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(265.0, context),top: RicalcoloHeight(570.0, context)),
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                primary: Color(0xffe00a17),
                onPrimary: Colors.white,
                fixedSize: Size(RicalcoloWidth(78.0, context), RicalcoloHeight(37.0, context)),
                elevation: 8,
              ),
              child: Text(
                'Prenota',
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
                      _svg_r4k88i,
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
                      _svg_9ebjea,
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
                        color: const Color(0xffffffff),
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
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(201.0, context), RicalcoloHeight(445.0, context)),
            child: Container(
width: RicalcoloWidth(80.0, context),
            height: RicalcoloHeight(80.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xe8f5f5f5),
                border: Border.all(width: 1.0, color: const Color(0xff0e1116)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(224.0, context), RicalcoloHeight(430.0, context)),
            child: Container(
width: RicalcoloWidth(34.0, context),
            height: RicalcoloHeight(34.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(219.0, context), RicalcoloHeight(473.0, context)),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(21.0, context),
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: '19',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'PM',
                    style: TextStyle(
                      fontSize: RicalcoloWidth(16.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(232.1, context), RicalcoloHeight(437.7, context)),
            child:
                // Adobe XD layer: 'clock' (group)
                SizedBox(
width: RicalcoloWidth(18.0, context),
            height: RicalcoloHeight(18.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.1, 4.1, 4.1, 7.5),
                    size: Size(17.6, 17.6),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 4.1, 7.5),
                          size: Size(4.1, 7.5),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 4.1, 7.5),
                                size: Size(4.1, 7.5),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_55xi6d,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 17.6, 17.6),
                    size: Size(17.6, 17.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 17.6, 17.6),
                          size: Size(17.6, 17.6),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 17.6, 17.6),
                                size: Size(17.6, 17.6),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_oz951v,
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
            offset: Offset(RicalcoloWidth(95.0, context), RicalcoloHeight(445.0, context)),
            child: Container(
width: RicalcoloWidth(80.0, context),
            height: RicalcoloHeight(80.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xe8f5f5f5),
                border: Border.all(width: 1.0, color: const Color(0xff0e1116)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(117.0, context), RicalcoloHeight(464.0, context)),
            child: Text(
              '26',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(28.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(117.0, context), RicalcoloHeight(491.0, context)),
            child: Text(
              'MAY',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(26.0, context), RicalcoloHeight(221.0, context)),
            child:
                // Adobe XD layer: 'copertina' (group)
                SizedBox(
              width: RicalcoloWidth(323.0, context),
            height: RicalcoloHeight(139.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 323.0, 139.0),
                    size: Size(323.0, 139.0),
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
                          image: const AssetImage("assets/image/copertina.png"),
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
            offset: Offset(RicalcoloWidth(118.0, context), RicalcoloHeight(425.0, context)),
            child: Container(
width: RicalcoloWidth(34.0, context),
            height: RicalcoloHeight(34.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(126.0, context), RicalcoloHeight(434.0, context)),
            child:
                // Adobe XD layer: 'calendar' (group)
                SizedBox(
width: RicalcoloWidth(19.0, context),
            height: RicalcoloHeight(16.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.4, 18.5, 8.7),
                    size: Size(18.6, 16.3),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_v957ia,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 15.3, 3.3),
                    size: Size(18.6, 16.3),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_q555bg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 9.7, 15.3, 6.6),
                    size: Size(18.6, 16.3),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_t2lw4x,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(145.0, context), RicalcoloHeight(321.0, context)),
            child:
                // Adobe XD layer: 'profilo' (shape)
                Container(
              width: RicalcoloWidth(86.0, context),
            height: RicalcoloHeight(88.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/profilo.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: RicalcoloWidth(1.5, context), color: const Color(0xff0e1116)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
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
const String _svg_r4k88i =
    '<svg viewBox="139.5 38.5 97.0 1.0" ><path transform="translate(139.5, 38.5)" d="M 0 0 L 97 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_9ebjea =
    '<svg viewBox="240.5 38.5 95.0 1.0" ><path transform="translate(240.5, 38.5)" d="M 0 0 L 95 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_55xi6d =
    '<svg viewBox="0.0 0.0 4.1 7.5" ><path transform="translate(-236.17, -118.78)" d="M 239.9807739257812 125.0410842895508 L 237.5303802490234 123.2032775878906 L 237.5303802490234 119.4596786499023 C 237.5303802490234 119.0832672119141 237.2261199951172 118.7789764404297 236.8496856689453 118.7789764404297 C 236.4732971191406 118.7789764404297 236.1690063476562 119.0832672119141 236.1690063476562 119.4596786499023 L 236.1690063476562 123.5436706542969 C 236.1690063476562 123.7580642700195 236.269775390625 123.9602203369141 236.4412841796875 124.0882110595703 L 239.1638946533203 126.1302032470703 C 239.2864074707031 126.2220840454102 239.4293975830078 126.2663345336914 239.5715942382812 126.2663345336914 C 239.7792205810547 126.2663345336914 239.9834136962891 126.1730651855469 240.1168212890625 125.9934005737305 C 240.3429260253906 125.6931610107422 240.2816009521484 125.2663803100586 239.9807739257812 125.0410842895508 Z" fill="#ffffff" stroke="#ffffff" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oz951v =
    '<svg viewBox="0.0 0.0 17.6 17.6" ><path  d="M 8.787353515625 0 C 3.941711664199829 0 0 3.941711664199829 0 8.787353515625 C 0 13.63299560546875 3.941711664199829 17.57470703125 8.787353515625 17.57470703125 C 13.63299560546875 17.57470703125 17.57470703125 13.63299560546875 17.57470703125 8.787353515625 C 17.57470703125 3.941711902618408 13.63299560546875 0 8.787353515625 0 Z M 8.787353515625 16.21339225769043 C 4.693168163299561 16.21339225769043 1.361318945884705 12.8815393447876 1.361318945884705 8.787353515625 C 1.361318945884705 4.693168163299561 4.693168163299561 1.361319065093994 8.787353515625 1.361319065093994 C 12.88222599029541 1.361319065093994 16.21339225769043 4.693168163299561 16.21339225769043 8.787353515625 C 16.21339225769043 12.8815393447876 12.8815393447876 16.21339225769043 8.787353515625 16.21339225769043 Z" fill="#ffffff" stroke="#ffffff" stroke-width="0.30000001192092896" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v957ia =
    '<svg viewBox="0.0 4.4 18.5 8.7" ><path transform="translate(0.02, -146.64)" d="M 18.00593566894531 159.6918334960938 L 3.789683818817139 159.6918334960938 C 3.66217303276062 159.6918334960938 3.538939952850342 159.6471557617188 3.441203117370605 159.5658264160156 C 3.304662704467773 159.4515380859375 0.1898869723081589 156.7720031738281 -3.671646481961943e-05 150.988037109375 L 15.26792812347412 150.988037109375 C 15.45712661743164 156.2383422851562 18.32569122314453 158.7061767578125 18.35550117492676 158.7307434082031 C 18.5302677154541 158.8784484863281 18.59456634521484 159.11962890625 18.51594161987305 159.3342895507812 C 18.43786239624023 159.5484008789062 18.23437309265137 159.6918334960938 18.00593566894531 159.6918334960938 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q555bg =
    '<svg viewBox="0.0 0.0 15.3 3.3" ><path transform="translate(-90.98, -30.99)" d="M 91.52006530761719 32.07596206665039 L 94.239990234375 32.07596206665039 L 94.239990234375 31.5319938659668 C 94.239990234375 31.22735214233398 94.47933959960938 30.98800277709961 94.78399658203125 30.98800277709961 C 95.08860778808594 30.98800277709961 95.32797241210938 31.22735214233398 95.32797241210938 31.5319938659668 L 95.32797241210938 32.07596206665039 L 98.08418273925781 32.07596206665039 L 98.08418273925781 31.5319938659668 C 98.08418273925781 31.22735214233398 98.32353210449219 30.98800277709961 98.62815856933594 30.98800277709961 C 98.93280029296875 30.98800277709961 99.17216491699219 31.22735214233398 99.17216491699219 31.5319938659668 L 99.17216491699219 32.07596206665039 L 101.8921356201172 32.07596206665039 L 101.8921356201172 31.5319938659668 C 101.8921356201172 31.22735214233398 102.1314849853516 30.98800277709961 102.4360961914062 30.98800277709961 C 102.74072265625 30.98800277709961 102.9801025390625 31.22735214233398 102.9801025390625 31.5319938659668 L 102.9801025390625 32.07596206665039 L 105.7000274658203 32.07596206665039 C 106.0046539306641 32.07596206665039 106.2440032958984 32.3153190612793 106.2440032958984 32.61994552612305 L 106.2440032958984 34.25189590454102 L 90.97602844238281 34.25189590454102 L 90.97602844238281 32.61994552612305 C 90.97602844238281 32.3153190612793 91.21540832519531 32.07596206665039 91.52006530761719 32.07596206665039 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t2lw4x =
    '<svg viewBox="0.0 9.7 15.3 6.6" ><path transform="translate(-90.98, -288.17)" d="M 93.73788452148438 301.9291381835938 C 94.03323364257812 302.1751098632812 94.40403747558594 302.30908203125 94.78495788574219 302.30908203125 L 106.2449645996094 302.30908203125 L 106.2449645996094 303.9411010742188 C 106.2449645996094 304.2416381835938 106.0016937255859 304.4849853515625 105.7010040283203 304.4849853515625 L 91.52102661132812 304.4849853515625 C 91.22035217285156 304.4849853515625 90.97700500488281 304.2416381835938 90.97700500488281 303.9411010742188 L 90.97700500488281 297.8430786132812 C 92.02586364746094 300.4161376953125 93.4893798828125 301.7212524414062 93.73788452148438 301.9291381835938 Z" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
