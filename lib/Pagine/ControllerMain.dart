import 'package:everstream/Tipi/Azienda.dart';
import 'package:flutter/cupertino.dart';

import '../ControllerNew.dart';

class ControllerMain extends ControllerNew {

  ControllerMain() {

  }
  bool userIsAzienda() {
    return ControllerNew.database.activeUser is Azienda;
  }
 bool setBaseforCall(BuildContext context){
   ControllerNew.database.currentcontext= context;
 }

}