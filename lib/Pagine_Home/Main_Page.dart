import 'package:everstream/NostriWidgetss/Cerca.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../NostriWidgetss/Menu.dart';
import 'Profilo_Utente/ProfiloUtente.dart';
import 'Profilo_Utente/ProfiloUtente_Modifica.dart';
import '../PaginaCerca.dart';
import '../main.dart';

class Main_Page extends StatelessWidget {
  BuildContext context;
  Menu menu;

  Main_Page({
    Key key,
  }) : super(key: key) {
    menu = new Menu(this);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Column(children: <Widget>[
          Expanded(child: ReturnActiveSchermata()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              child: menu,
            ),
          ),
        ]),
      ),
    );
  }

  Widget ReturnActiveSchermata() {
    int current_active = menu.getCurrentActive();
    switch (current_active) {
      case 1:
        return PaginaCerca();
        break;
      case 4:
        return Profiloutente();
        break;
    }
  }

  void Change() {
    rebuildAllChildren(context);
  }
}
