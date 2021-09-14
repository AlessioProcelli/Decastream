import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import '../Live.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class Lancioofferta extends StatelessWidget {
  Lancioofferta({
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
            height: RicalcoloHeight(663.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/image/ferry.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: RicalcoloWidth(278.0, context),
                top: RicalcoloHeight(17.0, context)),

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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(51.0, context), RicalcoloHeight(365.0, context)),
            child: Container(
              width: RicalcoloWidth(273.0, context),
            height: RicalcoloHeight(83.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0x660e1116),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(0.0, context), RicalcoloHeight(595.0, context)),

            child:
                // Adobe XD layer: 'detta1-696x402' (shape)
                Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(217.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/tastiera.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(76.0, context), RicalcoloHeight(429.0, context)),
            child: SvgPicture.string(
              _svg_wa2f95,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(308.0, context), RicalcoloHeight(537.0, context)),
            child: Transform.rotate(
              angle: 3.1416,
              child:
                  // Adobe XD layer: 'indietro' (group)
                  PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,

                  ),
                ],
                child: SizedBox(
                  width: RicalcoloWidth(45.0, context),
            height: RicalcoloHeight(42.0, context),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 42.0),
                        size: Size(45.0, 42.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Transform.rotate(
                          angle: 3.1416,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 42.0),
                                size: Size(45.0, 42.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: const Color(0xffe00a17),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(18.4, 14.9, 9.8, 7.0),
                                size: Size(45.0, 42.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_wuk59y,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(18.4, 21.9, 9.8, 7.0),
                                size: Size(45.0, 42.0),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_pjk46f,
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
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(19.0, context), RicalcoloHeight(17.0, context)),
            child:
                // Adobe XD layer: 'Termina' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Live(),
                ),
              ],
              child: SizedBox(

                width: RicalcoloWidth(65.0, context),
            height: RicalcoloHeight(59.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 65.0, 59.0),
                      size: Size(65.0, 59.0),
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
                      bounds: Rect.fromLTWH(24.5, 28.8, 16.2, 16.2),
                      size: Size(65.0, 59.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_pg60nj,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(24.5, 28.8, 16.2, 16.2),
                      size: Size(65.0, 59.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_cut4y7,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(10.0, 9.0, 45.0, 12.0),
                      size: Size(65.0, 59.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'ANNULLA',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(10.0, context),
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
            offset: Offset(RicalcoloWidth(64.0, context), RicalcoloHeight(338.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(224.0, context),
          
              child: Text(
                '“Titolo Offerta”',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(31.0, context),
                  color: const Color(0x92ffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(284.0, context), RicalcoloHeight(29.0, context)),
            child:
                // Adobe XD layer: 'group@1x' (shape)
                Container(
              width: RicalcoloWidth(21.0, context),
            height: RicalcoloHeight(18.0, context),
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
    );
  }
}

const String _svg_wuk59y =
    '<svg viewBox="18.4 14.9 9.8 7.0" ><path transform="translate(18.42, 14.93)" d="M 0 0 L 9.83519172668457 6.989060401916504" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pjk46f =
    '<svg viewBox="18.4 21.9 9.8 7.0" ><path transform="translate(18.42, 21.92)" d="M 0 6.989060401916504 L 9.83519172668457 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_wa2f95 =
    '<svg viewBox="76.5 429.5 222.0 1.0" ><path transform="translate(76.5, 429.5)" d="M 0 0 L 222 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pg60nj =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 0 0 L 16.22048568725586 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_cut4y7 =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 16.22048568725586 0 L 0 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
