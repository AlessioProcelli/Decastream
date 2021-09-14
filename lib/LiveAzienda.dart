import 'package:everstream/pages/call.dart';
import 'package:everstream/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:permission_handler/permission_handler.dart';
class LiveAzienda extends StatelessWidget {
  LiveAzienda({
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
            height: RicalcoloHeight(708.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/image/maxresdefault.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(418.0, context)),
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
            offset: Offset(RicalcoloWidth(109.0, context), RicalcoloHeight(680.0, context)),
            child: SizedBox(
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
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffe00a17),
                        border: Border.all(
                            width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
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
                    bounds: Rect.fromLTWH(12.0, 8.0, 134.0, 19.0),
                    size: Size(158.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      'LANCIA OFFERTA!',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(16.0, context),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(20.0, context)),
            child: Container(
              width: RicalcoloWidth(156.0, context),
            height: RicalcoloHeight(33.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xb2ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(270.0, context), RicalcoloHeight(20.0, context)),
            child: Container(
              width: RicalcoloWidth(92.0, context),
            height: RicalcoloHeight(33.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xb2ffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(18.0, context), RicalcoloHeight(24.0, context)),
            child:
                // Adobe XD layer: 'fedez-biografia-202…' (shape)
                Container(
              width: RicalcoloWidth(24.0, context),
            height: RicalcoloHeight(24.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/fedez.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(766.0, context)),
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
            offset: Offset(RicalcoloWidth(50.0, context), RicalcoloHeight(24.0, context)),
            child: Text(
              'Federico Lucia',
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
            offset: Offset(RicalcoloWidth(300.0, context), RicalcoloHeight(25.0, context)),
            child: Text(
              '28:49',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(18.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(611.0, context)),
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
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(580.0, context)),
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
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(549.0, context)),
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
            offset: Offset(RicalcoloWidth(43.0, context), RicalcoloHeight(518.0, context)),
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
            offset: Offset(RicalcoloWidth(307.0, context), RicalcoloHeight(678.0, context)),
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
                            width: RicalcoloWidth(1.0, context), color: const Color(0xff0e1116)),
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
            offset: Offset(RicalcoloWidth(22.0, context), RicalcoloHeight(672.0, context)),
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
          Transform.translate(
            offset: Offset(RicalcoloWidth(74.0, context), RicalcoloHeight(729.0, context)),
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
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(154.0, context), RicalcoloHeight(729.0, context)),
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
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(234.0, context), RicalcoloHeight(729.0, context)),
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
            offset: Offset(RicalcoloWidth(19.0, context), RicalcoloHeight(550.0, context)),
            child:
                // Adobe XD layer: 'freccia' (shape)
                Container(
              width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/freccia.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(19.0, context), RicalcoloHeight(581.0, context)),
            child:
                // Adobe XD layer: 'freccia' (shape)
                Container(
width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/freccia.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(19.0, context), RicalcoloHeight(612.0, context)),
            child:
                // Adobe XD layer: 'freccia' (shape)
                Container(
              width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/freccia.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
             /* await _handleCameraAndMic(Permission.camera);
              await _handleCameraAndMic(Permission.microphone);*/
              // push video page with given channel name
              Route route = MaterialPageRoute(builder: (context) =>CallPage(channelName:"mio"));
              Navigator.push(context, route);
            },
          ),

          Transform.translate(
            offset: Offset(RicalcoloWidth(19.0, context), RicalcoloHeight(519.0, context)),
            child:
                // Adobe XD layer: 'freccia' (shape)
                Container(
              width: RicalcoloWidth(17.0, context),
            height: RicalcoloHeight(17.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/freccia.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(279.0, context), RicalcoloHeight(28.0, context)),
            child:
                // Adobe XD layer: 'wall-clock' (shape)
                Container(
              width: RicalcoloWidth(16.0, context),
            height: RicalcoloHeight(16.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/wall-clock.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }
}
