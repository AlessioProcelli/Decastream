import 'package:everstream/Tipi/Azienda.dart';

import '../ControllerNew.dart';

class ControllerMain extends ControllerNew {

  ControllerMain() {

  }
  bool userIsAzienda() {
    return ControllerNew.database.activeUser is Azienda;
  }


}