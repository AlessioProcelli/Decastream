import 'package:everstream/Tipi/Azienda.dart';

import '../../ControllerNew.dart';

class ControllerCall extends ControllerNew {

  ControllerCall() {
  }
  bool isAzienda(){
    return ControllerNew.database.activeUser is Azienda;
  }
  void removeChat(String nome){
    ControllerNew.database.removeChat(nome);
  }
}