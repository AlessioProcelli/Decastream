import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

import 'main.dart';

class Registrati extends StatelessWidget {
  final controllerNome=TextEditingController(text:"Nome");
  final controllerCognome=TextEditingController(text:"Cognome");
  final controllerCitta=TextEditingController(text:"Città");
  final controllerProvincia=TextEditingController(text:"PT");
  final controllerCompleanno=TextEditingController(text:"Data Di Nascita");
  final controllerEmail=TextEditingController(text:"Email");
  final controllerPassword=TextEditingController(text:"Password");
  final controllerUser=TextEditingController(text:"Nome Utente");
  bool controllSex=true; //true femmina false maschio
  bool pressNome=false;
  bool pressCognome=false;
  bool pressCitta=false;
  bool pressProvincia=false;
  bool pressCompleanno=false;
  bool pressEmail=false;
  bool pressPassword=false;
  bool pressUser=false;

  Registrati({
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
            offset: Offset(RicalcoloWidth(126.0, context), RicalcoloHeight(229.0, context)),
            child: Text(
              'Registrati',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(30.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),









 //Campo nomee
      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(303.0, context)),

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
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressNome? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

     //Campo Cognome

      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(383.0, context)),

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
              controller:controllerCognome,
              onTap:(){
                ClearText(controllerCognome);
                pressCognome=true;
                rebuildAllChildren(context);
                },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressCognome? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

//Campo Data Di Nascita
          Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(544.0, context)),

        width: RicalcoloWidth(128.0, context),
        height: RicalcoloHeight(42.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffe00a17),
        ),
        child:Container(
          margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
          width: RicalcoloWidth(128.0, context),
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
            child:TextFormField(
              controller:controllerCompleanno,
              onTap:(){
                ClearText(controllerCompleanno);
                pressCompleanno=true;
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color:pressCompleanno? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

//Campo Email

      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(621.0, context)),

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
              controller:controllerEmail,
              onTap:(){
                ClearText(controllerEmail);
                pressEmail=true;
                rebuildAllChildren(context);
                },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressEmail? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),

// Campo User
        Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(701.0, context)),

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
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressUser? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
    ),
        ),


//Campo Password
      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(67.0, context), top: RicalcoloHeight(781.0, context)),

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
              controller:controllerPassword,
              obscureText: true,
              onTap:(){
                ClearText(controllerPassword);
                pressPassword=true;
                rebuildAllChildren(context);},
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: pressPassword? Color(0xff0e1116) : Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),


//Campo Città
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(65.0, context), top: RicalcoloHeight(461.0, context)),
            width: RicalcoloWidth(200.0, context),
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
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(15.0, context),
                        color:  pressCitta? Color(0xff0e1116) : Color(0x3a0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

              ),
            ),

//Campo Provincia

      Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(277.0, context), top: RicalcoloHeight(461.0, context)),
        width: RicalcoloWidth(52.0, context),
        height: RicalcoloHeight(42.0, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xffe00a17),
        ),
        child:Container(
          margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context), top: RicalcoloHeight(3.0, context)),
          width: RicalcoloWidth(52.0, context),
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
            margin: EdgeInsets.only(left: RicalcoloWidth(14.0, context), top: RicalcoloHeight(5.0, context)),
                    child:  TextFormField(
                      controller:controllerProvincia,
                      onTap:(){
                        ClearText(controllerProvincia);
                        pressProvincia=true;
                        rebuildAllChildren(context);},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(11.0, context),
                        color:pressProvincia? Color(0xff0e1116) : Color(0x3a0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),

              ),
            ),

// Scelta Maschio Femmina
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(232.0, context), top: RicalcoloHeight(538.0, context)),

            child:Column(
              children:<Widget> [
            Row(
            children: <Widget>[
            Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(18.0, context)),
          child:Text(
              'Sesso',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(13.0, context),
                color: const Color(0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
            ),
          ],
            ),

//Riga Bottoni
            Row(
            children: <Widget>[

             //Bottone Femmina
               Container(
              margin:  EdgeInsets.only(top:RicalcoloHeight(6.0, context)),
            width: RicalcoloWidth(29.0, context),
            height: RicalcoloHeight(29.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color:controllSex ?Color(0xffe00a17) :Color(0xff000000),
              ),
                    child: TextButton(
                      onPressed: (){
                        controllSex=false;
                        rebuildAllChildren(context);
                      },

                      child: Text(
              'M',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(13.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),

            ),
          ),
            ),



              Container(
              margin:  EdgeInsets.only(left:RicalcoloWidth(11.0, context),top:RicalcoloHeight(6.0, context)),
              width: RicalcoloWidth(29.0, context),
            height: RicalcoloHeight(29.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color:controllSex ?Color(0xff000000) :Color(0xffe00a17) ,
              ),
                child:TextButton(
                  onPressed: (){
                    controllSex=true;
                    rebuildAllChildren(context);
                  },child:Text(
                    'F',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: RicalcoloWidth(13.0, context),
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),





          ],),
    ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(118.0, context), top: RicalcoloHeight(873.0, context)),

            width: RicalcoloWidth(139.0, context),
            height: RicalcoloHeight(42.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffe00a17),
            ),

          child: TextButton(
              onPressed: (){
                CreaAccount(context);
              },

              child: Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(4.0, context), top: RicalcoloHeight(3.0, context)),
            child: Text(
              'CREA ACCOUNT',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ),
          ),



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
            offset: Offset(RicalcoloWidth(127.0, context), RicalcoloHeight(42.0, context)),
            child:
                // Adobe XD layer: 'logo_bianco-traccia…' (shape)
                Container(
              width: RicalcoloWidth(122.0, context),
            height: RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/image/logo.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),






          Transform.translate(
            offset: Offset(RicalcoloWidth(293.0, context), RicalcoloHeight(799.0, context)),
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
        ],
      ),
      ),
    );
  }

  void CreaAccount(BuildContext context){
    String sesso="M";
    if(controllSex=true){
      sesso="F";
    }
    controller.AddUtente(controllerNome.text, controllerCognome.text, controllerCompleanno.text, sesso,
        controllerProvincia.text,controllerCitta.text,controllerEmail.text, controllerUser.text,
        controllerPassword.text);
   /* controllerNome.dispose();
    controllerCognome.dispose();
    controllerCompleanno.dispose();
    controllerProvincia.dispose();
    controllerCitta.dispose();
    controllerEmail.dispose();
    controllerUser.dispose();
    controllerPassword.dispose();*/

    Navigator.pop(context);
    Navigator.pop(context);
  }


}
