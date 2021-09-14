import 'package:adobe_xd/pinned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Ridimensiona.dart';

//imm
import 'package:flutter_svg/flutter_svg.dart';

//barra cerca e filtra su schermata cerca

class BarraCerca extends StatelessWidget {
  @override

  BarraCerca() {}

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:RicalcoloHeight(17.0, context), right:RicalcoloWidth(1.0, context),
            bottom:RicalcoloHeight(1.0, context), left:RicalcoloWidth(25.0, context)),
        child: Row(
          children: <Widget> [
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
                                child: SvgPicture.string( //TODO CAMBIARE IMMAGINE
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

            Row(
              children: <Widget> [
                Container(
                  margin: EdgeInsets.only(top:RicalcoloHeight(1.0, context), right:RicalcoloWidth(1.0, context),
                      bottom:RicalcoloHeight(1.0, context), left:RicalcoloWidth(18.0, context)),
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
                  child:  Container(
    margin: EdgeInsets.only(top:RicalcoloHeight(10.0, context), right:RicalcoloWidth(1.0, context)),
    child:Text(
                    'FILTRA',
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(11.0, context),
                      color: const Color(0xff0e1116),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center, //TODO CAMBIARE ALLINEAMENTO
                  ),
                ),
                  ),
              ] ,


            ),




          ],
        ),


        ),




    );
  }
}

const String _svg_8l61jc =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#e00a17" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
