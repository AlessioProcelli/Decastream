import 'package:everstream/NostriWidgetss/Cerca.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NostriWidgetss/Menu.dart';
import 'ProfiloUtente.dart';
import 'ProfiloUtenteInfo.dart';
import 'PaginaCerca.dart';
import 'main.dart';

class Navigatore extends StatelessWidget {
BuildContext context;
  Menu menu;
  Navigatore({
    Key key,
  }) : super(key: key){
    menu= new Menu(this);
  }

  @override
  Widget build(BuildContext context) {
   this.context=context;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
          children: <Widget>[
           ReturnActiveSchermata(),
            menu,
          ]
      ),
    );
  }

  Widget ReturnActiveSchermata() {
    int current_active = menu.getCurrentActive();
    switch (current_active) {
      case 1:
        return PaginaCerca();break;
      case 4:
        return Profiloutente();break;
    }
  }
  void Change(){
    rebuildAllChildren(context);

  }




}