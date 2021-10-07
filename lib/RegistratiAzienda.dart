import 'package:everstream/main.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

class RegistratiAzienda extends StatelessWidget {
  final controllerNome=TextEditingController(text:"Nome Azienda");
  final controllerEmail=TextEditingController(text:"Email");
  final controllerCitta=TextEditingController(text:"Sede Azienda");
  final controllerProvincia=TextEditingController(text:"PT");
  final controllerPartitaIva=TextEditingController(text:"Partita Iva");
  final controllerTipologia=TextEditingController(text:"Tipologia Azienda");
  final controllerPassword=TextEditingController(text:"Password");
  final controllerUser=TextEditingController(text:"Nome Utente");
  bool pressNome=false;
  bool pressEmail=false;
  bool pressCitta=false;
  bool pressProvincia=false;
  bool pressPartitaIva=false;
  bool pressTipologia=false;
  bool pressPassword=false;
  bool pressUser=false;
  RegistratiAzienda({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body:SingleChildScrollView(child: Stack(
        children: <Widget>[
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(348.0, context),
            decoration: BoxDecoration(
              color: const Color(0xffe00a17),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0,  RicalcoloHeight(192.0, context)),
            child: Container(
              width: RicalcoloWidth(529.0, context),
            height: RicalcoloHeight(419.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(78.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(RicalcoloWidth(124.0, context), RicalcoloHeight(220.0, context)),
            child: Text(
              'Registrati',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(30.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(124.0, context), RicalcoloHeight(257.0, context)),
            child: Text(
              'come azienda',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(20.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),






          //Campo Nome
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(303.0, context)),

              width: RicalcoloWidth(261.0, context),
              height: RicalcoloHeight(42.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffe00a17),
              ),
         child:Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
              width: RicalcoloWidth(261.0, context),
              height: RicalcoloHeight(42.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x43000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),


         child: Container(
           margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(7.0, context)),
            child: TextFormField(
              controller:controllerNome,
              onTap:(){
                ClearText(controllerNome);
                pressNome=true;
                rebuildAllChildren(context);
                },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressNome ?Color(0xff0e1116) : Color(0x3a0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ),
            ),


        //Campo Email
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(383.0, context)),

              width: RicalcoloWidth(261.0, context),
              height: RicalcoloHeight(42.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffe00a17),
              ),
          child: Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
              width: RicalcoloWidth(261.0, context),
              height: RicalcoloHeight(42.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x43000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            child:Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(7.0, context)),
            child:TextFormField(
              controller:controllerEmail,
              onTap:(){
                ClearText(controllerEmail);
                pressEmail=true;
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color:  pressEmail ?Color(0xff0e1116) : Color(0x3a0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ),),

// Campo Tipologia Azienda
    Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(543.0, context)),

      width: RicalcoloWidth(180.0, context),
      height: RicalcoloHeight(42.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color(0xffe00a17),
    ),
    child: Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
      width: RicalcoloWidth(180.0, context),
      height: RicalcoloHeight(42.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color(0xffffffff),
    boxShadow: [
    BoxShadow(
    color: const Color(0x43000000),
    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
    blurRadius: 6,
    ),
    ],
    ),
    child:Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(10.0, context), top: RicalcoloHeight(7.0, context)),
            child: TextFormField(
              controller:controllerTipologia,
              onTap:(){
                ClearText(controllerTipologia);
                pressTipologia=true;
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color:  pressTipologia ?Color(0xff0e1116) : Color(0x3a0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),),),

// Campo Username
      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(695.0, context)),

        width: RicalcoloWidth(261.0, context),
        height: RicalcoloHeight(42.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffe00a17),
        ),
        child:Container(
          margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
          width: RicalcoloWidth(261.0, context),
          height: RicalcoloHeight(42.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x43000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),


          child: Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(7.0, context)),
            child: TextFormField(
              controller:controllerUser,
              onTap:(){
                ClearText(controllerUser);
                pressUser=true;
                rebuildAllChildren(context);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressUser ?Color(0xff0e1116) : Color(0x3a0e1116)
              ),
              textAlign: TextAlign.left,
            ),
          ),),),

    //Campo Partita Iva
        Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(620.0, context)),

    width: RicalcoloWidth(261.0, context),
    height: RicalcoloHeight(42.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color(0xffe00a17),
    ),
    child:Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
    width: RicalcoloWidth(261.0, context),
    height: RicalcoloHeight(42.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color(0xffffffff),
    boxShadow: [
    BoxShadow(
    color: const Color(0x43000000),
    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
    blurRadius: 6,
    ),
    ],
    ),


    child: Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(7.0, context)),
            child: TextFormField(
              controller:controllerPartitaIva,
              onTap:(){
                ClearText(controllerPartitaIva);
                pressPartitaIva=true;
                rebuildAllChildren(context);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressPartitaIva? Color(0xff0e1116) : Color(0x3a0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
    ),
    ),

//Campo Password
      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(774.0, context)),

        width: RicalcoloWidth(261.0, context),
        height: RicalcoloHeight(42.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffe00a17),
        ),
        child:Container(
          margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
          width: RicalcoloWidth(261.0, context),
          height: RicalcoloHeight(42.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x43000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),


          child: Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(7.0, context)),
            child: TextFormField(
              obscureText: true,
              controller:controllerPassword,
              onTap:(){
                ClearText(controllerPassword);
                pressPassword=true;
                rebuildAllChildren(context);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color:  pressPassword? Color(0xff0e1116) : Color(0x3a0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

// Campo SedeAzienda
         Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(461.0, context)),
           child: SizedBox(
              width: RicalcoloWidth(200.0, context),
            height: RicalcoloHeight(45.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 197.0, 42.0),
                    size: Size(200.0, 45.0),
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
                    bounds: Rect.fromLTWH(3.0, 3.0, 197.0, 42.0),
                    size: Size(200.0, 45.0),
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
                            color: const Color(0x43000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                    Container(
                      margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context), top: RicalcoloHeight(13.0, context)),
                      child: TextFormField(
                      controller:controllerCitta,
                      onTap:(){
                        ClearText(controllerCitta);
                        pressCitta=true;
                        rebuildAllChildren(context);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(15.0, context),
                        color: pressCitta? Color(0xff0e1116) : Color(0x3a0e1116),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    )

                ],
              ),
            ),
          ),



//Campo Provincia
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(277.0, context), top: RicalcoloHeight(461.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(52.0, context),
            height: RicalcoloHeight(45.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 50.0, 42.0),
                    size: Size(52.0, 45.0),
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
                    bounds: Rect.fromLTWH(2.0, 3.0, 50.0, 42.0),
                    size: Size(52.0, 45.0),
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
                            color: const Color(0x43000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
            Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(13.0, context), top: RicalcoloHeight(13.0, context)),
              child:TextFormField(
                controller:controllerProvincia,
                onTap:(){
                  ClearText(controllerProvincia);
                  pressProvincia=true;
                  rebuildAllChildren(context);},
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(13.0, context),
                  color: pressProvincia? Color(0xff0e1116) : Color(0x3a0e1116),
                ),
                textAlign: TextAlign.left,
              ),
            ),
                ],
              ),
            ),
          ),


//Bottone Registrati
      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(120.0, context), top: RicalcoloHeight(866.0, context)),
        child:TextButton(
          onPressed: (){
            CreaAccount(context);
          },
          child: SizedBox(
              width: RicalcoloWidth(139.0, context),
              height: RicalcoloHeight(42.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 139.0, 42.0),
                    size: Size(139.0, 42.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffe00a17),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x43000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(14.0, context),top:RicalcoloHeight(14.0, context)),
                    child:Text(
                      'CREA ACCOUNT',
                      style: TextStyle(
                        fontFamily: 'MADE TOMMY',
                        fontSize: RicalcoloWidth(15.0, context),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),



      Container(
        margin:  EdgeInsets.only(left:RicalcoloWidth(133.0, context),top:RicalcoloHeight(927.0, context)),),
          Transform.translate(
            offset: Offset(RicalcoloWidth(130.0, context), RicalcoloHeight(151.0, context)),
            child: Text(
              'the best fast shop',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(284.0, context), RicalcoloHeight(790.0, context)),
            child:
                // Adobe XD layer: 'visibility' (shape)
                Container(
              width: RicalcoloWidth(21.0, context),
            height: RicalcoloHeight(16.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/visibility.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(86.0, context), RicalcoloHeight(39.0, context)),
            child: Text(
              'LOGO',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(77.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Transform.translate(
            offset: Offset(RicalcoloWidth(219.6, context), RicalcoloHeight(558.8, context)),
            child: SvgPicture.string(
              _svg_mgu3t6,
              allowDrawingOutsideViewBox: true,
            ),
          ),

/*          Transform.translate(
            offset: Offset(RicalcoloWidth(324.0, context), RicalcoloHeight(629.0, context)),
            child: Container(
              width: RicalcoloWidth(22.0, context),
            height: RicalcoloHeight(22.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff09de00),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(330.6, context), RicalcoloHeight(636.5, context)),
            child: SizedBox(
              width: RicalcoloWidth(9.0, context),
            height: RicalcoloHeight(7.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.2, 3.1, 2.7),
                    size: Size(8.9, 6.9),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_d0yvq7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.1, 0.0, 5.8, 6.9),
                    size: Size(8.9, 6.9),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_3hftdz,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),

 */
        ],
      ),
      ),
    );
  }
  void CreaAccount(BuildContext context){
    controller.AddAzienda(controllerNome.text,controllerEmail.text,
        controllerCitta.text, controllerProvincia.text, controllerPartitaIva.text,
        controllerTipologia.text,controllerPassword.text, controllerUser.text);
    Navigator.pop(context);
    Navigator.pop(context);
  }
}

const String _svg_re6x1n =
    '<svg viewBox="14.6 11.8 7.8 5.5" ><path transform="translate(14.58, 11.82)" d="M 0 0 L 7.785539627075195 5.532541751861572" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_rl7nk7 =
    '<svg viewBox="14.6 17.4 7.8 5.5" ><path transform="translate(14.58, 17.35)" d="M 0 5.532541751861572 L 7.785539627075195 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ilywl5 =
    '<svg viewBox="235.2 479.8 5.5 7.8" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 240.68, 479.76)" d="M 0 0 L 7.785539627075195 5.532541751861572" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_ikhp6q =
    '<svg viewBox="229.6 479.8 5.5 7.8" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 235.15, 479.76)" d="M 0 5.532541751861572 L 7.785539627075195 0" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_mgu3t6 =
    '<svg viewBox="219.6 558.8 11.1 7.8" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 230.68, 558.76)" d="M 0 0 L 7.785539627075195 5.532541751861572" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.0, 1.0, -1.0, 0.0, 225.15, 558.76)" d="M 0 5.532541751861572 L 7.785539627075195 0" fill="none" stroke="#0e1116" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_d0yvq7 =
    '<svg viewBox="0.0 3.1 3.1 2.7" ><path transform="translate(0.0, 3.14)" d="M 0 0 L 3.140960693359375 2.692251920700073" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_3hftdz =
    '<svg viewBox="3.1 -1.1 5.8 6.9" ><path transform="translate(3.14, -1.07)" d="M 5.76361083984375 0 L 0 6.904501914978027" fill="none" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
