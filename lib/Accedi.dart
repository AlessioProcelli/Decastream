import 'package:everstream/CallUtente.dart';
import 'package:everstream/LiveDoppia.dart';
import 'package:everstream/LiveUtente.dart';
import 'package:everstream/ProfiloAzienda.dart';
import 'package:everstream/ProfiloUtente.dart';
import 'package:everstream/ProfiloUtenteInfo.dart';
import 'package:everstream/PaginaCerca.dart';
import 'package:everstream/SceltaAccount.dart';
import 'package:everstream/Tipi/Chiamata.dart';
import 'package:everstream/Widget_Grafici/Input_Box.dart';
import 'package:everstream/pages/call.dart';
import 'package:everstream/pages/index.dart';
import 'package:everstream/prova.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:everstream/main.dart';
import 'LiveAzienda.dart';
import 'Navigatore.dart';
import 'da Lavorarci/Cerca.dart';
import 'Registrati.dart';
import 'provaDipi.dart';


class Accedi extends StatelessWidget {
  /*sono i controller delle TEXTEDITFORM servono per avere riferimenti ai campi e prenderci il testo */
   Input_Box input_username=Input_Box(261.0, 41.0, "Nome utente o email");
   Input_Box input_password=Input_Box(261.0, 41.0, "Password",true);

  bool pressPassword = false;
  bool pressUser = false;

  Accedi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: const Color(0xffffffff),

        body: Stack(
          children: <Widget>[

        Column(
        children: <Widget>[

            ///Parte  Rossa in  Alto
            Container(
            width: RicalcoloWidth(375.0, context),
        height: RicalcoloHeight(348.0, context),
        decoration: BoxDecoration(
          color: const Color(0xffe00a17),
        ),

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(top: RicalcoloHeight(42.0, context)),
                width: RicalcoloWidth(92.0, context),
                height: RicalcoloHeight(102.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/image/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: RicalcoloHeight(10.0, context)),
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
            ]
        ),
      ),]),
            Transform.translate(
              offset: Offset(0.0, RicalcoloHeight(192.0, context)),
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
              offset: Offset(RicalcoloWidth(143.0, context),
                  RicalcoloHeight(279.0, context)),
              child: Text(
                'Accedi',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(30.0, context),
                  color: const Color(0xff0e1116),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),



            Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(88.0, context),
                  top: RicalcoloHeight(715.0, context)),

              child: TextButton(
                onPressed: () {
                  Registrazione(context);
                  ;
                },
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: RicalcoloWidth(13.0, context),
                      color: const Color(0xff0e1116),
                    ),
                    children: [
                      TextSpan(
                        text: 'Non hai ancora l’account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'Registrati',
                        style: TextStyle(
                          color: const Color(0xffe00a17),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,

                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
              ),),
            Transform.translate(
              offset: Offset(RicalcoloWidth(128.0, context),
                  RicalcoloHeight(507.0, context)),
              child: Text(
                'Ti sei dimenticato la password?',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(10.0, context),
                  color: const Color(0xff0e1116),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),


            // Bottone e Accedi
            Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(125.0, context),
                  top: RicalcoloHeight(601.0, context)),
              child: SizedBox(
                width: RicalcoloWidth(126.0, context),
                height: RicalcoloHeight(42.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 126.0, 42.0),
                        size: Size(126.0, 42.0),
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
                                offset: Offset(
                                    0, RicalcoloHeight(3.0, context)),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Container(
                            child: TextButton(
                              onPressed: () {
                                Login(context);
                              },

                              child: SizedBox(
                                width: RicalcoloWidth(126.0, context),
                                height: RicalcoloHeight(42.0, context),
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: RicalcoloWidth(29.0, context),
                                      top: RicalcoloWidth(5.0, context)),
                                  child: Text(
                                    'ACCEDI',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: RicalcoloWidth(16.0, context),
                                      color: const Color(0xffffffff),

                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        )
                    ),

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: RicalcoloWidth(125.0, context),
                  left: RicalcoloHeight(601.0, context)),
              child: SizedBox(
                width: RicalcoloWidth(126.0, context),
                height: RicalcoloHeight(42.0, context),
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 126.0, 42.0),
                      size: Size(126.0, 42.0),
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
                              offset: Offset(0, RicalcoloHeight(3.0, context)),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: const Color(0xffe00a17),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x43000000),
                            offset: Offset(0, RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Text(
                        'ACCEDI',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: RicalcoloWidth(15.0, context),
                          color: const Color(0xffffffff),

                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),

                    ),
                  ],),),),
            /// Username Campo
            Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(61.0, context),
                  top: RicalcoloHeight(363.0, context)),

              child: input_username,
            ),

            /// Campo Password
            Container(
              margin: EdgeInsets.only(
                  left: RicalcoloWidth(60.0, context),
                  top: RicalcoloHeight(443.0, context)),
              child:input_password,),

            //Azione Accedi


            Transform.translate(
              offset: Offset(RicalcoloWidth(291.0, context),
                  RicalcoloHeight(459.0, context)),
              child:
              // Adobe XD layer: 'visibility' (group)
              SizedBox(
                width: RicalcoloWidth(21.0, context),
                height: RicalcoloHeight(42.0, context),
                child: Stack(

                ),
              ),
            ),

            Transform.translate(
              offset: Offset(RicalcoloWidth(291.0, context),
                  RicalcoloHeight(459.0, context)),
              child:
              // Adobe XD layer: 'visibility' (shape)
              Container(
                width: RicalcoloWidth(21.0, context),
                height: RicalcoloHeight(16.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assets/image/visibility.png'),
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

  Future<void> Login(BuildContext context) async {
    bool correct = await controller.LoginIsCorrect(
       input_username.getText(), input_password.getText());
    if (correct) {
      Route route;
      if (controller.database.isAzienda) {
        route = MaterialPageRoute(builder: (context) => ProfiloAzienda());
        controller.database.ListenChiamate();
      }
      else {
        route = MaterialPageRoute(builder: (context) => Navigatore());
      }
      Navigator.push(context, route);

    }


    /*Route route = MaterialPageRoute(builder: (context) => Profiloutente());
    Navigator.push(context, route);*/
  }

  void Registrazione(BuildContext context) {
    Route route = MaterialPageRoute(builder: (context) => SceltaAccount());
    Navigator.push(context, route);
  }


}


const String _svg_2krf4z =
    '<svg viewBox="0.0 0.0 6.1 6.1" ><path transform="translate(-192.55, -192.54)" d="M 197.5851287841797 192.6689147949219 C 197.4159088134766 192.4996948242188 197.1408233642578 192.4996948242188 196.9716033935547 192.6689147949219 C 196.8023834228516 192.838134765625 196.8023834228516 193.1140747070312 196.9716033935547 193.282470703125 C 197.4627838134766 193.7736206054688 197.7343902587891 194.4270935058594 197.7343902587891 195.1230163574219 C 197.7343902587891 196.5583190917969 196.5663299560547 197.7263488769531 195.1310272216797 197.7263488769531 C 194.4351043701172 197.7263488769531 193.7816314697266 197.4556274414062 193.2904815673828 196.9635620117188 C 193.1212310791016 196.7943725585938 192.8461761474609 196.7943725585938 192.6769256591797 196.9635620117188 C 192.5077362060547 197.1319580078125 192.5077362060547 197.4078979492188 192.6769256591797 197.5771484375 C 193.3312225341797 198.233154296875 194.2033233642578 198.5941467285156 195.1310272216797 198.5941467285156 C 197.0453643798828 198.5941467285156 198.6021575927734 197.037353515625 198.6021575927734 195.123046875 C 198.6021575927734 194.1953430175781 198.2411651611328 193.3232116699219 197.5851287841797 192.6689147949219 Z" fill="#000000" stroke="#0e1116" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lcauks =
    '<svg viewBox="0.0 0.0 4.4 4.4" ><path transform="translate(-170.67, -170.66)" d="M 174.7439270019531 170.7188720703125 C 174.5469360351562 170.6841735839844 174.3456115722656 170.6589965820312 174.1390991210938 170.6589965820312 C 172.2247924804688 170.6589965820312 170.6679992675781 172.2157897949219 170.6679992675781 174.130126953125 C 170.6679992675781 174.3366088867188 170.6931762695312 174.5379638671875 170.7287292480469 174.7349243164062 C 170.7660217285156 174.9449462890625 170.9491577148438 175.0933532714844 171.1548156738281 175.0933532714844 C 171.1799926757812 175.0933532714844 171.2051391601562 175.0916137695312 171.2311706542969 175.08642578125 C 171.4663391113281 175.0447387695312 171.624267578125 174.8191223144531 171.5826110839844 174.5839538574219 C 171.5557250976562 174.4364013671875 171.5357360839844 174.2863159179688 171.5357360839844 174.130126953125 C 171.5357360839844 172.6947937011719 172.7037963867188 171.5267639160156 174.1390991210938 171.5267639160156 C 174.2953186035156 171.5267639160156 174.4454345703125 171.5467224121094 174.5929260253906 171.5727844238281 C 174.8237915039062 171.61962890625 175.0537414550781 171.4564819335938 175.0953979492188 171.2213134765625 C 175.1370544433594 170.9861450195312 174.9791564941406 170.7605285644531 174.7439270019531 170.7188720703125 Z" fill="#000000" stroke="#0e1116" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lyb8vh =
    '<svg viewBox="0.0 0.0 15.4 10.9" ><path transform="translate(-133.44, -136.46)" d="M 148.7311859130859 141.0431823730469 C 148.6331176757812 140.9268798828125 146.2857818603516 138.1873168945312 143.0480804443359 136.5099182128906 C 142.8380584716797 136.3997192382812 142.5734100341797 136.4830017089844 142.4631652832031 136.6965026855469 C 142.3529663085938 136.9090881347656 142.436279296875 137.171142578125 142.6497650146484 137.2814025878906 C 145.1437683105469 138.5726318359375 147.1361846923828 140.587646484375 147.8174133300781 141.3235168457031 C 146.7830352783203 142.44384765625 142.7122344970703 146.5302124023438 138.4210815429688 146.5302124023438 C 136.9649658203125 146.5302124023438 135.4974975585938 146.1787719726562 134.057861328125 145.4845581054688 C 133.8443908691406 145.3795471191406 133.5832061767578 145.4706726074219 133.4790649414062 145.6867370605469 C 133.3740844726562 145.9019775390625 133.4652099609375 146.1614074707031 133.6812744140625 146.2655334472656 C 135.2389373779297 147.0179138183594 136.8339233398438 147.3979797363281 138.4211120605469 147.3979797363281 C 143.7675476074219 147.3979797363281 148.5316619873047 141.8406982421875 148.7321166992188 141.6037902832031 C 148.8691711425781 141.4423522949219 148.8683013916016 141.2054443359375 148.7311859130859 141.0431823730469 Z" fill="#000000" stroke="#0e1116" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jdpaka =
    '<svg viewBox="0.0 0.0 13.6 10.2" ><path transform="translate(0.0, -106.66)" d="M 13.26021099090576 107.1588516235352 C 12.27268695831299 106.8264694213867 11.31465530395508 106.6590042114258 10.41300201416016 106.6590042114258 C 5.066581726074219 106.6590042114258 0.3024567365646362 112.2163009643555 0.1019986346364021 112.4531936645508 C -0.02471114881336689 112.6024398803711 -0.03512454032897949 112.8194198608398 0.07771428674459457 112.9816818237305 C 0.1375912576913834 113.0675735473633 1.572035551071167 115.1042556762695 4.058232307434082 116.7556686401367 C 4.131980419158936 116.8051376342773 4.214433193206787 116.8285751342773 4.29773998260498 116.8285751342773 C 4.437466621398926 116.8285751342773 4.575444221496582 116.7608871459961 4.658751010894775 116.6333084106445 C 4.791522026062012 116.4346084594727 4.736851692199707 116.1647262573242 4.537248134613037 116.0327987670898 C 2.711447715759277 114.8187789916992 1.461840748786926 113.3531112670898 0.9940927624702454 112.7569351196289 C 1.992923855781555 111.6722030639648 6.090592384338379 107.5268020629883 10.41300201416016 107.5268020629883 C 11.22089385986328 107.5268020629883 12.08610153198242 107.679557800293 12.98336029052734 107.9806594848633 C 13.2107048034668 108.0622024536133 13.4571704864502 107.9363784790039 13.53266716003418 107.7081527709961 C 13.60905933380127 107.4808120727539 13.48755550384521 107.235221862793 13.26021099090576 107.1588516235352 Z" fill="#000000" stroke="#0e1116" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6x9vwj =
    '<svg viewBox="0.0 0.0 15.6 15.6" ><path transform="translate(-64.0, -64.01)" d="M 79.48872375488281 64.13491821289062 C 79.31950378417969 63.9656982421875 79.04441070556641 63.9656982421875 78.87518310546875 64.13491821289062 L 64.12291717529297 78.88722229003906 C 63.95369720458984 79.05644989013672 63.95369720458984 79.33154296875 64.12291717529297 79.50076293945312 C 64.20797729492188 79.58492279052734 64.31901550292969 79.62747192382812 64.43010711669922 79.62747192382812 C 64.54119873046875 79.62747192382812 64.65224456787109 79.5849609375 64.7364501953125 79.50076293945312 L 79.48872375488281 64.74844360351562 C 79.65794372558594 64.57923126220703 79.65794372558594 64.30412292480469 79.48872375488281 64.13491821289062 Z" fill="#000000" stroke="#0e1116" stroke-width="0.20000000298023224" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
