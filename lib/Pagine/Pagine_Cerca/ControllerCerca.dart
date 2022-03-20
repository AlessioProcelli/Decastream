import 'package:everstream/Pagine/Pagine_Profilo_Azienda/ProfiloAzienda_Vista_Utente.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/Tipi/Hashtag.dart';
import '../../ControllerNew.dart';
import 'package:everstream/Pagine/Pagine_Live/Call.dart';
import 'package:everstream/Tipi/Chiamata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class ControllerCerca extends ControllerNew {

  ControllerCerca() {
  }

  Future<List<Azienda>> getAziendeList(){
    return ControllerNew.database.getAziendaList();
  }
  Future<List<Hashtag>> getHastagList(int id){
    return ControllerNew.database.findCompanyHashtag(id);
  }
  Future<void> ChiamaAzienda(int id_azienda, BuildContext context) async {
    Azienda azienda_chiamata;
    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);
    azienda_chiamata= await ControllerNew.database.findAziendaById(id_azienda);
    await ControllerNew.database.addChiamata(
        new Chiamata(id_azienda, ControllerNew.database.currentUser.id, 10, 11));
    Route route = MaterialPageRoute(
        builder: (context) => Call(
          channelName: "ChiamataN" +
              id_azienda.toString() +
              ControllerNew.database.activeUser.getId().toString(),
          azienda: azienda_chiamata, //da nome canale univoco
        ));
    ControllerNew.database.ListenOfferta();
    Navigator.push(context, route);
  }

  Future<void> VisualizzaProfiloAzienda(int id, BuildContext context) async {
    Azienda currentAzienda = await ControllerNew.database.findAziendaById(id);
    List<Hashtag> azienda_hash_list = await ControllerNew.database.findCompanyHashtag(id);
    Route route = MaterialPageRoute(
        builder: (context) =>
            ProfiloAzienda_VistaUtente(currentAzienda, azienda_hash_list));
    Navigator.push(context, route);
  }
Future<void> _handleCameraAndMic(Permission permission) async {
  final status = await permission.request();
  print(status);
}
}