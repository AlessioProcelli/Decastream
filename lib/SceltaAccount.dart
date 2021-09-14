import 'package:everstream/Registrati.dart';
import 'package:everstream/RegistratiAzienda.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:everstream/Ridimensiona.dart';

class SceltaAccount extends StatelessWidget {
  SceltaAccount({
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
            offset: Offset(RicalcoloWidth(134.0, context), RicalcoloHeight(261.0, context)),
            child: Text(
              'Scegli',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(38.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(107.0, context), RicalcoloHeight(353.0, context)),
            child: Text(
              'Hai un negozio?',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(22.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(145.0, context), RicalcoloHeight(503.0, context)),
            child: Text(
              'oppure',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(26.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(131.0, context), RicalcoloHeight(151.0, context)),
            child: Text(
              'the best fast shop',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),








         // Bottone Account Aziendale
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(76.0, context),top:RicalcoloHeight(403.0, context)),
            child:TextButton(

              onPressed: (){
                RegistraAzienda(context);
              },
              child: Container(
                width: RicalcoloWidth(214.0, context),
                height: RicalcoloHeight(55.0, context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color:const Color(0xffe00a17),

                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x43000000),
                      offset: Offset(0.0,  RicalcoloHeight(3.0, context)),

                      blurRadius: 6,
                    ),
                  ],
                ),

         child: Container(
    margin:  EdgeInsets.only(left:RicalcoloWidth(2.0, context),top:RicalcoloHeight(2.0, context)),
              width: RicalcoloWidth(214.0, context),
              height: RicalcoloHeight(74.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
              ),


         child:Container(
    margin:  EdgeInsets.only(left:RicalcoloWidth(18.0, context),top:RicalcoloHeight(20.0, context)),
            child: Text(
              'Account Aziendale',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(21.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
    ),),
    ),),


          //Bottone Account Personale
          Container(
            margin:  EdgeInsets.only(left:RicalcoloWidth(75.0, context),top:RicalcoloHeight(562.0, context)),
            child:TextButton(

              onPressed: (){
                RegistraPersona(context);
              },
              child: Container(
    width: RicalcoloWidth(215.0, context),
    height: RicalcoloHeight(55.0, context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color(0xffe00a17),
    ),

    child:Container(
      margin:  EdgeInsets.only(left:RicalcoloWidth(2.0, context),top:RicalcoloHeight(2.0, context)),
                width: RicalcoloWidth(215.0, context),
                height: RicalcoloHeight(55.0, context),
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
            margin:  EdgeInsets.only(left:RicalcoloWidth(21.0, context),top:RicalcoloHeight(18.0, context)),

            child: Text(
              'Account Personale',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(21.0, context),
                color: const Color(0xff0e1116),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ),
    ),
          ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(158.0, context), RicalcoloHeight(703.0, context)),
            child: Text(
              'AVANTI',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(85.0, context), RicalcoloHeight(39.0, context)),
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
            offset: Offset(RicalcoloWidth(300.0, context), RicalcoloHeight(552.0, context)),
            child: Container(
width: RicalcoloWidth(15.0, context),
            height: RicalcoloHeight(15.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: RicalcoloWidth(0.4, context), color: const Color(0xffe00a17)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),

                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(300.0, context), RicalcoloHeight(394.0, context)),
            child: Container(
              width: RicalcoloWidth(15.0, context),
            height: RicalcoloHeight(15.0, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: RicalcoloWidth(0.4, context), color: const Color(0xffe00a17)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3e000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),

                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(303.0, context), RicalcoloHeight(554.0, context)),
            child: SizedBox(
            width: RicalcoloWidth(9.0, context),
              
              child: Text(
                '?',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(9.0, context),
                  color: const Color(0xffe00a17),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(303.8, context), RicalcoloHeight(396.0, context)),
            child: SizedBox(
            width: RicalcoloWidth(9.0, context),
              child: Text(
                '?',
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(9.0, context),
                  color: const Color(0xffe00a17),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void RegistraAzienda(BuildContext context) {
  Route route = MaterialPageRoute(builder: (context) => RegistratiAzienda());
  Navigator.push(context, route);
}
void RegistraPersona(BuildContext context) {
  Route route = MaterialPageRoute(builder: (context) => Registrati());
  Navigator.push(context, route);
}
