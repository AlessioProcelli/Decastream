import 'dart:async';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:everstream/NostriWidgetss/ChatLista.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/pages/call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Ridimensiona.dart';
import 'main.dart';


class provaDipi extends StatelessWidget {
  final List<String> messagelist=[];
  BuildContext context;
  bool ready=false;
 provaDipi(){
   const oneSec = const Duration(seconds:1);
   new Timer.periodic(oneSec, (Timer t) => Ascolta());
 }

  Widget build(BuildContext context) {
    this.context=context;
    ready=true;
  return SafeArea(child:
  Scaffold(

  body: Center(


  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[

  RaisedButton(
  child: Text('flip!'),
  onPressed:(){provaFunz();},
    ),
    /*Container(
      height: 400,
      //child: myListViewWithCustomIconAndCard(context,"yuo",messagelist),
      child:new UserInformation("aleP")
    ),*/
  ],),),),);

}
  Ascolta() async {
    if (ready) {
      bool newMess = await controller.getChat("aleP", messagelist);
      if(newMess) {
        rebuildAllChildren(context);
      }
    }
  }

  provaFunz() {
    print("ooo");

    //const oneSec = const Duration(seconds:5);
    //new Timer.periodic(oneSec, (Timer t) => ;}
  }
}