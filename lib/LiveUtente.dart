import 'package:everstream/CallUtente.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Ridimensiona.dart';

class LiveUtente20 extends StatelessWidget {
  LiveUtente20({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'maxresdefault' (shape)
          Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(812.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                 image: const AssetImage("assets/image/maxresdefault.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            Route route = MaterialPageRoute(builder: (context) => CallUtente(channelName: "mioo",));
            Navigator.push(context, route);
          },),
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(521.0, context)),
            child: Container(
                width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(290.0, context),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0x00000000), const Color(0xff0e1116)],
                  stops: [0.0, 1.0],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(660.0, context)),
            child: Container(
                width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(186.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                color: const Color(0x710e1116),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x12000000),
                    offset: Offset(0.0,  RicalcoloHeight(-10.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(41.0, context), RicalcoloHeight(697.0, context)),
            child: Container(
              width: RicalcoloWidth(292.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: const Color(0x91ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x17000000),
                    offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(54.0, context), RicalcoloHeight(705.0, context)),
            child: Text(
              'Scrivi il messaggio qui…',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(223.0, context), RicalcoloHeight(480.0, context)),
            child: Container(
                width: RicalcoloWidth(135.0, context),
            height: RicalcoloHeight(130.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                color: const Color(0xe1ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x58000000),
                    offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(253.0, context), RicalcoloHeight(493.0, context)),
            child: Text(
              'SCARPE BELLE',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(11.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(261.0, context), RicalcoloHeight(514.0, context)),
            child: Text(
              '175€',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(27.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(248.0, context), RicalcoloHeight(566.0, context)),
            child: Container(
                width: RicalcoloWidth(85.0, context),
            height: RicalcoloHeight(28.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffe00a17),
                border: Border.all(  width: RicalcoloWidth(1.0, context), color: const Color(0xffe00a17)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                    offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(267.0, context), RicalcoloHeight(573.0, context)),
            child: Text(
              'Compra',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(13.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(246.5, context), RicalcoloHeight(509.5, context)),
            child: SvgPicture.string(
              _svg_wgigdu,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(345.0, context), RicalcoloHeight(476.0, context)),
            child: Container(
                width: RicalcoloWidth(21.0, context),
            height: RicalcoloHeight(21.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xdfd6d6d6),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(351.5, context), RicalcoloHeight(482.5, context)),
            child: SizedBox(
                width: RicalcoloWidth(8.0, context),
            height: RicalcoloHeight(8.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 7.5, 7.5),
                    size: Size(8.1, 7.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_3y4gpk,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 8.1, 7.5),
                    size: Size(8.1, 7.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_hqjyhz,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(265.0, context), RicalcoloHeight(602.0, context)),
            child: Container(
                width: RicalcoloWidth(52.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: const Color(0xf0ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x27000000),
                    offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(275.0, context), RicalcoloHeight(605.0, context)),
            child: Text(
              '9 minuti',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(9.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(599.0, context)),
            child: Text(
              'Lancia l’offerta!',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(568.0, context)),
            child: Text(
              'Lancia l’offerta!',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(537.0, context)),
            child: Text(
              'Lancia l’offerta!',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(35.0, context), RicalcoloHeight(506.0, context)),
            child: Text(
              'Lancia l’offerta!',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(25.0, context)),
            child: Container(

                width: RicalcoloWidth(120.0, context),
            height: RicalcoloHeight(33.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xb2ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(18.0, context), RicalcoloHeight(29.0, context)),
            child:
                // Adobe XD layer: 'logo' (shape)
                Container(
                width: RicalcoloWidth(24.0, context),
            height: RicalcoloHeight(24.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                   image: const AssetImage("assets/image/logo.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(50.0, context), RicalcoloHeight(29.0, context)),
            child: Text(
              'Zara Gigli',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(337.0, context), RicalcoloHeight(7.0, context)),
            child: Text(
              '28:49',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(11.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(239.0, context), RicalcoloHeight(547.0, context)),
            child: Text(
              'CON RITIRO IN NEGOZIO',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(316.0, context), RicalcoloHeight(696.0, context)),
            child:
                // Adobe XD layer: 'invioRED' (shape)
                Container(
                width: RicalcoloWidth(30.0, context),
            height: RicalcoloHeight(30.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/invioRED.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, RicalcoloHeight(771.0, context)),
            child:
                // Adobe XD layer: 'red' (shape)
                Container(
                width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(91.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(74.0, context), RicalcoloHeight(742.0, context)),
            child:
                // Adobe XD layer: 'microfonoBORDO' (shape)
                Container(
                width: RicalcoloWidth(69.0, context),
            height: RicalcoloHeight(64.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/microfonoBORDO.png"),
                  fit: BoxFit.fill,
                ),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(154.0, context), RicalcoloHeight(742.0, context)),
            child:
                // Adobe XD layer: 'attaccaBORDO' (shape)
                Container(
                width: RicalcoloWidth(69.0, context),
            height: RicalcoloHeight(64.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/attaccaBORDO.png"),
                  fit: BoxFit.fill,
                ),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(234.0, context), RicalcoloHeight(742.0, context)),
            child:
                // Adobe XD layer: 'videocameraBORDO' (shape)
                Container(
                width: RicalcoloWidth(69.0, context),
            height: RicalcoloHeight(64.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/videocameraBORDO.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(303.0, context), RicalcoloHeight(636.0, context)),
            child: SizedBox(
                width: RicalcoloWidth(39.0, context),
            height: RicalcoloHeight(39.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 39.0, 39.0),
                    size: Size(39.0, 39.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.0),
                        color: const Color(0xffffffff),
                        border: Border.all( 
                              width: RicalcoloWidth(1.0, context),
    color: const Color(0xff0e1116),),
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.0, 10.0, 21.0, 20.0),
                    size: Size(39.0, 39.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'camera@1x' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                           image: const AssetImage("assets/image/cameraGIRA.png"),
                          fit: BoxFit.fill,
                        ),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(26.0, context), RicalcoloHeight(634.0, context)),
            child:
                // Adobe XD layer: 'acquistiBORDO' (shape)
                Container(
                width: RicalcoloWidth(57.0, context),
            height: RicalcoloHeight(57.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: const AssetImage("assets/image/acquistiBORDO.png"),
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

const String _svg_wgigdu =
    '<svg viewBox="246.5 509.5 95.0 1.0" ><path transform="translate(246.5, 509.5)" d="M 0 0 L 95 0" fill="none" stroke="#e00a17" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_3y4gpk =
    '<svg viewBox="11.5 12.5 7.5 7.5" ><path transform="translate(11.5, 12.5)" d="M 0 0 L 7.538216114044189 7.538216114044189" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_hqjyhz =
    '<svg viewBox="11.5 12.5 8.1 7.5" ><path transform="translate(11.5, 12.5)" d="M 8.07666015625 0 L 0 7.538216114044189" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
