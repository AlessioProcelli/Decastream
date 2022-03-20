import 'dart:io';
import 'dart:ui';

import 'package:everstream/Tipi/Utente.dart';

import '../../ControllerNew.dart';
import 'package:path/path.dart' as Path;

class ControllerUtente extends ControllerNew {

  ControllerUtente(){}

  Utente getActiveUser(){
    return ControllerNew.database.activeUser as Utente;
  }
  Future<void> updateUser(String nome, String cognome, String username,
      String email, String cellulare, File foto_profilo) async {
    Utente user=getActiveUser();
    if (foto_profilo != null) {
      String fileName = Path.basename(foto_profilo.path);
      fileName =user.id.toString() + fileName; //compone id+nomefotocarticata//
      await ControllerNew.database.AddFoto(fileName, foto_profilo);
      user.foto_profilo = await ControllerNew.database.getPathFotoProfilo(fileName);
    }
    user.cellulare = cellulare;
    user.nome = nome;
    user.cognome = cognome;
    user.username = username;
    user.email = email;
    ControllerNew.database.updateUtente();
  }
}