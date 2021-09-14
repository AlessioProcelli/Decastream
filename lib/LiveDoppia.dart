import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class LiveDoppia extends StatelessWidget {
  LiveDoppia({
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
            height: RicalcoloHeight(362.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage("assets/image/maxresdefault.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
           
 offset: Offset(0.0,  RicalcoloHeight(521.0, context)),

            child: Container(
 width: RicalcoloWidth(375.0, context),
              height:RicalcoloHeight(290.0, context),
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
            
 offset: Offset(0.0,  RicalcoloHeight(362.0, context)),

            child:
                // Adobe XD layer: 'fedez direttaa' (shape)
                Container(
 width: RicalcoloWidth(375.0, context),
              height:RicalcoloHeight(336.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/fedez direttaa.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
    
 offset: Offset(0.0,  RicalcoloHeight(698.0, context)),

            child: Container(
             
 width: RicalcoloWidth(375.0, context),
              height:RicalcoloHeight(113.0, context),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
          
offset: Offset(RicalcoloWidth(253.0, context), RicalcoloHeight(501.0, context)),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
                
 width: RicalcoloWidth(144.0, context),
              height:RicalcoloHeight(77.0, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.0),
                  color: const Color(0xe1ffffff),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x58000000),
                  
offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(297.0, context), RicalcoloHeight(493.0, context)),
            child: Text(
              'SCARPE \nBELLE',
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
     
offset: Offset(RicalcoloWidth(297.0, context), RicalcoloHeight(544.0, context)),
            child: Text(
              '175€',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                
fontSize: RicalcoloWidth(25.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(307.0, context), RicalcoloHeight(579.0, context)),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
              
 width: RicalcoloWidth(34.0, context),
              height:RicalcoloHeight(61.0, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.0),
                  color: const Color(0xffe00a17),
                  border:
                      Border.all(width: 1.0, color: const Color(0xffe00a17)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3e000000),
                      
offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(299.5, context), RicalcoloHeight(602.5, context)),
            child: Text(
              'Compra',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                
fontSize: RicalcoloWidth(13.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(299.0, context), RicalcoloHeight(539.0, context)),
            child: SvgPicture.string(
              _svg_4u3lan,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(350.5, context), RicalcoloHeight(462.5, context)),
            child: Transform.rotate(
              angle: 1.5708,
              child: Container(
             
 width: RicalcoloWidth(16.0, context),
              height:RicalcoloHeight(16.0, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xdfd6d6d6),
                ),
              ),
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(355.9, context), RicalcoloHeight(476.4, context)),
            child: Transform.rotate(
              angle: 1.5708,
              child: SizedBox(
               
 width: RicalcoloWidth(6.0, context),
              height:RicalcoloHeight(6.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 5.6, 5.6),
                      size: Size(6.0, 5.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_jn09qu,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 6.0, 5.6),
                      size: Size(6.0, 5.6),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_sp7tvr,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
           
offset: Offset(RicalcoloWidth(305.5, context), RicalcoloHeight(474.5, context)),
            child: Container(
             
 width: RicalcoloWidth(42.0, context),
              height:RicalcoloHeight(14.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xf0ffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x27000000),
                    
offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
          
offset: Offset(RicalcoloWidth(313.5, context), RicalcoloHeight(476.5, context)),
            child: Text(
              '9 minuti',
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
           
offset: Offset(RicalcoloWidth(298.0, context), RicalcoloHeight(576.0, context)),
            child: Text(
              'CON SPEDIZIONE',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
               
fontSize: RicalcoloWidth(7.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
          
offset: Offset(RicalcoloWidth(30.0, context), RicalcoloHeight(25.0, context)),
            child: Container(
            
 width: RicalcoloWidth(120.0, context),
              height:RicalcoloHeight(33.0, context),
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
              height:RicalcoloHeight(24.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                image: DecorationImage(
                  image: const AssetImage("assets/image/logo.png"),
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
    
 offset: Offset(0.0,  RicalcoloHeight(758.0, context)),

            child:
                // Adobe XD layer: 'red' (shape)
                Container(
            
 width: RicalcoloWidth(375.0, context),
              height:RicalcoloHeight(91.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          Transform.translate(
            
offset: Offset(RicalcoloWidth(307.0, context), RicalcoloHeight(678.0, context)),
            child: SizedBox(
            
 width: RicalcoloWidth(39.0, context),
              height:RicalcoloHeight(39.0, context),
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
                            width: 1.0, color: const Color(0xff0e1116)),
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
              height:RicalcoloHeight(57.0, context),
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
              height:RicalcoloHeight(64.0, context),
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
              height:RicalcoloHeight(64.0, context),
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
              height:RicalcoloHeight(64.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/videocameraBORDO.png"),
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

const String _svg_4u3lan =
    '<svg viewBox="299.0 539.0 52.0 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 351.0, 539.0)" d="M 0 0 L 0 52" fill="none" stroke="#e00a17" stroke-width="1" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_jn09qu =
    '<svg viewBox="0.0 0.0 5.6 5.6" ><path  d="M 0 0 L 5.563921451568604 5.563921451568604" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_sp7tvr =
    '<svg viewBox="0.0 0.0 6.0 5.6" ><path  d="M 5.961344242095947 0 L 0 5.563921451568604" fill="none" stroke="#0e1116" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
