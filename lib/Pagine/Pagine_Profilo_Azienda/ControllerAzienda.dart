import 'dart:io';
import 'package:path/path.dart' as Path;
import 'package:everstream/AscoltatoreChiamate.dart';
import 'package:everstream/ControllerNew.dart';
import 'package:everstream/Pagine/Pagine_Chiamata/ChiamataInArrivo.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/Tipi/Chiamata.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:permission_handler/permission_handler.dart';

class ControllerAzienda extends ControllerNew with AscoltatoreChiamate {
  ControllerAzienda() {}

  Azienda getActiveAzienda() {
    return ControllerNew.database.activeUser as Azienda;
  }

  void ascolta() {
    ControllerNew.database.AscoltaChiamate(this);
  }

  @override
  Future<void> thereisCall() async {
    //cerca se l'azienda corrente sta venendo chiamata
    if (ControllerNew.database.activeUser is Azienda) {
      //si attiva solo se è un azienda
      Chiamata chiamata = await ControllerNew.database
          .findChiamateAziendat(ControllerNew.database.activeUser.getId());
      if (chiamata != null) {
        Utente user =
            await ControllerNew.database.findUserById(chiamata.id_utente);
        await _handleCameraAndMic(Permission.camera);
        await _handleCameraAndMic(Permission.microphone);
        await ControllerNew.database
            .RemoveCall(new Chiamata(chiamata.id_azienda, user.id, 7, 7));
        print("okok");
        FlutterRingtonePlayer.play(
          android: AndroidSounds.ringtone,
          ios: IosSounds.bell,
          looping: true,
          // Android only - API >= 28
          volume: 1,
          // Android only - API >= 28
          asAlarm: true, // Android only - all APIs
        );
        Route route = MaterialPageRoute(
            builder: (context) => ChiamatainArrivo(
                "ChiamataN" +
                    chiamata.id_azienda.toString() +
                    user.id.toString(), //da nome canale univoco,
                user));
        Navigator.push(ControllerNew.database.currentcontext, route);
      }
    }
  }

  Future<void> updateAzienda(
      File foto_profilo,
      File foto_copertina,
      File foto_hashtag_1,
      File foto_hashtag_2,
      File foto_hashtag_3,
      File foto_hashtag_4,
      String indirizzo,
      String descrizione,
      String nome,
      String nome_hash_1,
      String nome_hash_2,
      String nome_hash_3,
      String nome_hash_4) async {
    Azienda currentAzienda = getActiveAzienda();
    if (foto_profilo != null) {
      String fileName = await addFoto(foto_profilo);
      currentAzienda.img_profilo = fileName;
    }
    if (foto_copertina != null) {
      String fileName = await addFoto(foto_copertina);
      currentAzienda.img_copertina = fileName;
    }
    if (foto_hashtag_1 != null) {
      String fileName = await addFoto(foto_hashtag_1);
      currentAzienda.hashtagList[0].immagine_hashtag = fileName;
    }
    if (foto_hashtag_2 != null) {
      String fileName = await addFoto(foto_hashtag_2);
      currentAzienda.hashtagList[1].immagine_hashtag = fileName;
    }
    if (foto_hashtag_3 != null) {
      String fileName = await addFoto(foto_hashtag_3);
      currentAzienda.hashtagList[2].immagine_hashtag = fileName;
    }
    if (foto_hashtag_4 != null) {
      String fileName = await addFoto(foto_hashtag_4);
      currentAzienda.hashtagList[3].immagine_hashtag = fileName;
    }

    currentAzienda.hashtagList[0].nome = nome_hash_1;
    currentAzienda.hashtagList[1].nome = nome_hash_2;
    currentAzienda.hashtagList[2].nome = nome_hash_3;
    currentAzienda.hashtagList[3].nome = nome_hash_4;
    currentAzienda.nome_azienda = nome;
    currentAzienda.descrizione = descrizione;
    ControllerNew.database.UpdateHashtag();
    ControllerNew.database.UpdateAzienda();
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  Future<String> addFoto(File foto) async {
    String fileName = Path.basename(foto.path);
    fileName = ControllerNew.database.activeUser.getId().toString() +
        fileName; //compone id+nomefotocarticata//
    await ControllerNew.database.AddFoto(fileName, foto);
    return fileName;
  }
}
