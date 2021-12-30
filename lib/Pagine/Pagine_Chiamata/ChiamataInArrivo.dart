import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'package:everstream/Pagine/Pagine_Live/Call.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChiamatainArrivo  extends StatelessWidget{
  Utente user;
  String idChiamata;

  ChiamatainArrivo( String idChiamata,Utente user,){
    this.user=user;
    this.idChiamata=idChiamata;
  }
  build(BuildContext context){
    return SafeArea(

        child: Scaffold(
            backgroundColor: const Color(0xFFabcddd),
            body:Container(
                margin: EdgeInsets.only(top:RicalcoloHeight(35, context),
                    bottom:RicalcoloHeight(35, context),
                    right:RicalcoloWidth(25, context),
                    left:RicalcoloWidth(25, context)),
                child: Stack(
                  children:<Widget>[
       Center(
                child:Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FittedBox(
              fit:BoxFit.fitWidth,
              child:Text(
                user.nome+user.cognome,
                  style: My_Bold_Text(
                  RicalcoloWidth(18.0, context), Color(0xff000000)),
              )
            ),
            Container(
              margin:
              EdgeInsets.only(top: RicalcoloHeight(5.0, context)),
              width: RicalcoloWidth(116.0, context),
              height: RicalcoloHeight(116.0, context),
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.0),
                    image: DecorationImage(
                      image: NetworkImage(user.foto_profilo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

          ],
        )),
            Align(
            alignment: Alignment.bottomCenter,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Container(
                  width:RicalcoloWidth(100.0, context),
                  height:RicalcoloHeight(100, context),
                  child:AspectRatio(aspectRatio: 1/1 ,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,

                            shape: CircleBorder(), padding: EdgeInsets.all(30)),
                        child: Icon(
                          Icons.phone,

                          size:RicalcoloWidth(40.0, context),
                        ),
                        onPressed: (){rispondi(context);} ,
                      )
                  ),
                ),
                Container(
                  width:RicalcoloWidth(100.0, context),
                  height:RicalcoloHeight(100, context),
                  child: AspectRatio(aspectRatio: 1/1 ,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: CircleBorder(), padding: EdgeInsets.all(30)),
                        child: Icon(
                          Icons.call_end,

                          size:RicalcoloWidth(40.0, context),
                        ),
                        onPressed:(){ declina(context);},
                      )
                  ),
                ),
              ],

            )
        )
        ])
        ),
    ));
  }

  rispondi(BuildContext context) {
    Navigator.pop(context);
    Route route = MaterialPageRoute(
        builder: (context) =>
    Call(channelName: idChiamata,user: user));
    Navigator.push(context, route);
  }

  declina(BuildContext context) {
    Navigator.pop(context);
  }
}