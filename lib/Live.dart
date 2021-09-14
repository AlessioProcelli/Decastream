
import 'package:everstream/pages/call.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'da Lavorarci/Lancioofferta.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class Live extends StatelessWidget {
  Live({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(RicalcoloWidth(0.0, context), RicalcoloHeight(754.0, context)),
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
          // Adobe XD layer: 'maxresdefault' (shape)
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(663.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/image/ferry.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(28.0, context), RicalcoloHeight(683.0, context)),
            child:
                // Adobe XD layer: 'Mod. in coda' (group)
                SizedBox(
                  width: RicalcoloWidth(158.0, context),
            height: RicalcoloHeight(33.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 158.0, 33.0),
                    size: Size(158.0, 33.0),
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
                            color: const Color(0x6f000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.0, 9.0, 85.0, 14.0),
                    size: Size(158.0, 33.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Modalità in coda',
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
                    bounds: Rect.fromLTWH(111.0, 3.0, 33.0, 24.0),
                    size: Size(158.0, 33.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'on-off' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 9.0, 33.0, 15.0),
                          size: Size(33.0, 24.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                               width: RicalcoloWidth(0.5, context),

                            ),
                          ),
                        ),
                            ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.6, 10.7, 10.2, 10.2),
                          size: Size(33.0, 24.0),
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
                          bounds: Rect.fromLTWH(5.0, 0.0, 6.0, 6.0),
                          size: Size(33.0, 24.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'On',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(5.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 0.0, 7.0, 6.0),
                          size: Size(33.0, 24.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Off',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(5.0, context),
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
            offset: Offset(RicalcoloWidth(278.0, context), RicalcoloHeight(17.0, context)),
            child:
                // Adobe XD layer: 'Persone' (group)
                SizedBox(
                  width: RicalcoloWidth(82.0, context),
            height: RicalcoloHeight(41.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 82.0, 41.0),
                    size: Size(82.0, 41.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: const Color(0x550e1116),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 10.0, 40.0, 21.0),
                    size: Size(82.0, 41.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '1732',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(18.0, context),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 12.0, 21.0, 18.0),
                    size: Size(82.0, 41.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'group@1x' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage("assets/image/group.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //chat

          Transform.translate(
            offset: Offset(RicalcoloWidth(162.0, context), RicalcoloHeight(731.0, context)),
            child:
                // Adobe XD layer: 'Termina' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(51.0, context),
            height: RicalcoloHeight(46.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 51.0, 46.0),
                      size: Size(51.0, 46.0),
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
                              offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(19.5, 22.5, 12.7, 12.7),
                      size: Size(51.0, 46.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_i3erlt,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(19.5, 22.5, 12.7, 12.7),
                      size: Size(51.0, 46.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_t9b1dt,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(9.0, 7.0, 34.0, 10.0),
                      size: Size(51.0, 46.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'TERMINA',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(8.0, context),
                          color: const Color(0xff0e1116),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset((0.0), RicalcoloHeight(373.0, context)),
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
            offset: Offset(RicalcoloWidth(15.0, context), RicalcoloHeight(617.0, context)),
            child: Container(
              width: RicalcoloWidth(48.0, context),
            height: RicalcoloHeight(37.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
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
            offset: Offset(RicalcoloWidth(223.0, context), RicalcoloHeight(636.0, context)),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Lancioofferta(),
                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(122.0, context),
            height: RicalcoloHeight(68.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 122.0, 68.0),
                      size: Size(122.0, 68.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: const Color(0xffe00a17),
                          border: Border.all(
                              width: RicalcoloWidth (0.7,context), color: const Color(0xffe00a17)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x55000000),
                              offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(18.0, 10.0, 86.0, 48.0),
                      size: Size(122.0, 68.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Text(
                        'LANCIA\nOFFERTA',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(20.0, context),
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(12.0, context), RicalcoloHeight(20.0, context)),
            child: Container(
              width: RicalcoloWidth(130.0, context),
            height: RicalcoloHeight(83.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0x730e1116),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(15.5, context), RicalcoloHeight(29.0, context)),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                ),
              ],
              child: SizedBox(
                width: RicalcoloWidth(99.0, context),
                child: Text(
                  'Federico Lucia',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: RicalcoloWidth(14.0, context),
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(17.3, context), RicalcoloHeight(53.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(81.0, context),
              child: Text(
                'Leone Lucia',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(17.0, context), RicalcoloHeight(77.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(88.0, context),
              child: Text(
                'Vittoria Lucia',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(500.0, context)),
            child: Container(
              width: RicalcoloWidth(135.0, context),
            height: RicalcoloHeight(29.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xb9ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(442.0, context)),
            child: Container(
              width: RicalcoloWidth(307.0, context),
            height: RicalcoloHeight(50.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: const Color(0xb9ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(538.0, context)),
            child: Container(
              width: RicalcoloWidth(135.0, context),
            height: RicalcoloHeight(29.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xb9ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(574.0, context)),
            child: Container(
              width: RicalcoloWidth(240.0, context),
            height: RicalcoloHeight(29.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xb9ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(508.0, context)),
            child: Text(
              'Lancia l’offerta!',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(452.0, context)),
            child: Text(
              'Voglio comprare gli occhiali che hai messo\nnell’ultima storia di instagram',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(545.0, context)),
            child: Text(
              'Grande Ferry!',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(582.0, context)),
            child: Text(
              'Belle le scarpe, lancia un’offerta',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(504.0, context)),
            child:
                // Adobe XD layer: 'fedez-biografia-202…' (shape)
                Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(22.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/img1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(448.0, context)),
            child:
                // Adobe XD layer: 'fedez-biografia-202…' (shape)
                Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(22.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/img1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(542.0, context)),
            child:
                // Adobe XD layer: 'immagine-evidenza-1' (shape)
                Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(22.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/img2.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(13.0, context), RicalcoloHeight(578.0, context)),
            child:
                // Adobe XD layer: 'vittoria-lucia-ferr…' (shape)
                Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(22.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/img3.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(501.0, context)),
            child: Text(
              'Federico Lucia',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(445.0, context)),
            child: Text(
              'Federico Lucia',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(540.0, context)),
            child: Text(
              'Leone Lucia',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(576.0, context)),
            child: Text(
              'Vittoria Lucia',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(6.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(624.0, context)),
            child:
                // Adobe XD layer: 'camera@1x' (shape)
                Container(
              width: RicalcoloWidth(25.0, context),
            height: RicalcoloHeight(23.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/camera.png"),
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

const String _svg_i3erlt =
    '<svg viewBox="181.5 753.5 12.7 12.7" ><path transform="translate(181.5, 753.5)" d="M 0 0 L 12.663818359375 12.663818359375" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_t9b1dt =
    '<svg viewBox="181.5 753.5 12.7 12.7" ><path transform="translate(181.5, 753.5)" d="M 12.663818359375 0 L 0 12.663818359375" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
