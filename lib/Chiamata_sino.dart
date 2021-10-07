import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import  'package:everstream/Metodi/Ridimensiona.dart';

class Chiamata_sino extends StatelessWidget {
  Chiamata_sino({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(812.0, context),
            decoration: BoxDecoration(
              color: const Color(0xff585858),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(-2.5, context), RicalcoloHeight(0.7, context)),
            child: Container(
            child: Container(
              width: RicalcoloWidth(377.2, context),
            height: RicalcoloHeight(810.9, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.14), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(124.0, context), RicalcoloHeight(115.0, context)),
            child: Container(
            child:
                // Adobe XD layer: 'michael-dam-mEZ3PoF…' (shape)
                Container(
width: RicalcoloWidth(127.0, context),
            height: RicalcoloHeight(127.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/luisa.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
            ),
         Transform.translate(
            offset: Offset(RicalcoloWidth(78.0, context), RicalcoloHeight(328.0, context)),
            child: Container(
            child: Text(
              'Elettra Miriana',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: 33,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
    ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(85.7, context), RicalcoloHeight(374.0, context)),
            child: Container(
            child: SizedBox(
              width: RicalcoloWidth(205.0, context),
              child: Text(
                'vorrebbe entrare\nin negozio!',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: 24,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
    ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(204.0, context), RicalcoloHeight(609.0, context)),
            child: Container(
            child: SizedBox(
              width: RicalcoloWidth(147.0, context),
            height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 147.0, 67.0),
                    size: Size(147.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: const Color(0xff48de7c),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 19.0, 106.0, 30.0),
                    size: Size(147.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'ACCETTA',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: 25,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
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
            offset: Offset(RicalcoloWidth(25.0, context), RicalcoloHeight(609.0, context)),
            child: Container(
            child: SizedBox(
              width: RicalcoloWidth(147.0, context),
            height: RicalcoloHeight(67.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 147.0, 67.0),
                    size: Size(147.0, 67.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: const Color(0xfffd5741),
                      ),
                    ),
                  ),

                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(30.0, 19.0, 88.0, 30.0),
                    size: Size(147.0, 67.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'RIFIUTA',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: 25,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
