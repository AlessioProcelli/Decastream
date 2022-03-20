
import 'package:everstream/GraphicsInterface.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'package:everstream/Pagine/Pagine_Profilo_Azienda/ProfiloAzienda.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/Menu.dart';
import 'ControllerMain.dart';
import 'Pagine_Cerca/PaginaCerca.dart';
import 'Pagine_Profilo_Utente/ProfiloUtente.dart';

class Main_Page extends StatelessWidget implements GraphicsInterface {
  ControllerMain controller= new ControllerMain();
  BuildContext context;
  final Widget paginaCerca= new PaginaCerca();
  Widget paginaProfilo;
  Menu menu;

  Main_Page()  {
    menu = new Menu();
    menu.addObserver(this);
    if(controller.userIsAzienda()){
      paginaProfilo= new ProfiloAzienda();
    }else {
      paginaProfilo= new Profiloutente();
    }
  }

  @override
  Widget build(BuildContext context) {
    if(controller.userIsAzienda()) {
      controller.setBaseforCall(context);
    }
    this.context = context;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Column(children: <Widget>[
          Expanded(child: returnActiveSchermata()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 20,
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: menu,
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget returnActiveSchermata() {
    int current_active = menu.getCurrentActive();
    switch (current_active) {
      case 1:
          return paginaCerca;
        break;
      case 4:
          return paginaProfilo;
        break;
    }
  }


  @override
  update(GraphicsInterface) {
    rebuildAllChildren(context);
  }
}
