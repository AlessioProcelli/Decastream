import 'dart:io';
import 'package:everstream/Ridimensiona.dart';
import 'package:everstream/Tipi/Chiamata.dart';
import 'package:everstream/Tipi/Hashtag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:path/path.dart' as Path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Database.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/Tipi/Indirizzo.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/Tipi/Luogo.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:core';
import 'Call.dart';
import 'ProfiloAzienda_Vista_Utente.dart';
import 'Tipi/Offerta.dart';

class Controller {
  Database database;

  Controller() {
    database = new Database();
  }

  Future<void> AddUtente(
      String nome,
      String cognome,
      String data,
      String sesso,
      String provincia,
      String citta,
      String email,
      String user,
      String password) async {
    bool celuogo = false; //per valutare se il luogo è gia stato isneirto
    int idLuogo; //id luogo da associare alla persona
    List<Luogo> list = await database.getLuoghiList();
    list.forEach((element) {
      if (element.provincia == provincia && element.citta == citta) {
        celuogo = true;
        idLuogo = element.id;
      }
    });
    if (!celuogo) {
      idLuogo = await database.addLuogo(new Luogo("italia", provincia, citta));
    }
    database.addUser(
        new Utente(nome, cognome, data, sesso, idLuogo, email, user, password));
  }

  Future<void> AddAzienda(
      String nome_azienda,
      String email,
      String citta,
      String provincia,
      String partita_iva,
      String tipologia_azienda,
      String password,
      String user) async {
    bool celuogo = false; //per valutare se il luogo è gia stato isneirto
    int idLuogo; //id luogo da associare alla persona
    int idIndirizzo;
    List<Luogo> list = await database.getLuoghiList();
    list.forEach((element) {
      if (element.provincia == provincia && element.citta == citta) {
        celuogo = true;
        idLuogo = element.id;
      }
    });
    if (celuogo == false) {
      idLuogo = await database.addLuogo(new Luogo("italia", provincia, citta));
    }
    idIndirizzo =
        await database.addIndirizzo(new Indirizzo(idLuogo, null, null));
    int idazienda = await database.addAzienda(new Azienda(nome_azienda,
        idIndirizzo, partita_iva, tipologia_azienda, email, user, password));
    for (int i = 4; i > 0; i--) {
      await database.addHastag(new Hashtag(idazienda, "hashtag"));
    }
  }

  Future<void> getUtenti() async {
    // ignore: unnecessary_statements
    List<QueryDocumentSnapshot> list = await database.getTable("utenti");
    list.forEach((element) {
      print(element);
    });
  }

  Future<bool> LoginIsCorrect(String username, String password) async {
    bool trovato = false;
    database.isAzienda = false;
    List<Utente> listuser = await database.getUserList();

    ///Ricerca User Per nome e cognome
    for (Utente element in listuser) {
      //ricerca tra gli utenti
      if (element.username.compareTo(username) == 0 &&
          element.password.compareTo(password) == 0) {
        trovato = true;
        database.setCurrentUser(element);
        break;
      }
    }
    ;

    ///se esito negativo cerca tra le aziende
    if (trovato == false) {
      List<Azienda> listaziende = await database.getAziendaList();
      List<Hashtag> list = await database
          .getHashtagList(); //prende list hashtag per recuperare quelli aziendali

      for (Azienda element in listaziende) {
        if (element.username.compareTo(username) == 0 &&
            element.password.compareTo(password) == 0) {
          trovato = true;
          database.currentAzienda = element;
          database.isAzienda = true;
          list.forEach((hashtag) {
            if (hashtag.id_azienda == element.id) {
              database.aziendaHashtagList.add(hashtag);
            }
          });
          break;
        }
      }
      ;
    }
    return trovato;
  }

  Future<bool> getChat(String id_utente, List<String> listchat) async {
    if (listchat.isEmpty) {
      print("entro");
      List<QueryDocumentSnapshot> list =
          await database.getTable("Chat" + id_utente);
      list.forEach((element) {
        listchat.add(element["messaggio"]);
      });
      print(listchat.length);
      return true;
    }
    return false;
  }

  void addMessage(String messaggio, String azienda) {
    database.addMessage("Chat" + azienda, messaggio);
  }

  Future<void> UpdateUser(String nome, String cognome, String username,
      String email, String cellulare, File foto_profilo) async {
    if (foto_profilo != null) {
      String fileName = Path.basename(foto_profilo.path);
      fileName = database.currentUser.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_profilo);
      database.currentUser.foto_profilo =
          await database.getPathFotoProfilo(fileName);
    }
    database.currentUser.cellulare = cellulare;
    database.currentUser.nome = nome;
    database.currentUser.cognome = cognome;
    database.currentUser.username = username;
    database.currentUser.email = email;
    database.UpdateUser();
  }

  Future<void> UpdateAzienda(
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
    if (foto_profilo != null) {
      String fileName = Path.basename(foto_profilo.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_profilo);
      database.currentAzienda.img_profilo = fileName;
    }
    if (foto_copertina != null) {
      String fileName = Path.basename(foto_copertina.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_copertina);
      database.currentAzienda.img_copertina = fileName;
    }
    if (foto_hashtag_1 != null) {
      String fileName = Path.basename(foto_hashtag_1.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_hashtag_1);
      database.aziendaHashtagList[0].immagine_hashtag = fileName;
    }
    if (foto_hashtag_2 != null) {
      String fileName = Path.basename(foto_hashtag_2.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_hashtag_2);
      database.aziendaHashtagList[1].immagine_hashtag = fileName;
    }
    if (foto_hashtag_3 != null) {
      String fileName = Path.basename(foto_hashtag_3.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_hashtag_3);
      database.aziendaHashtagList[2].immagine_hashtag = fileName;
    }
    if (foto_hashtag_4 != null) {
      String fileName = Path.basename(foto_hashtag_4.path);
      fileName = database.currentAzienda.id.toString() +
          fileName; //compone id+nomefotocarticata//
      await database.AddFoto(fileName, foto_hashtag_4);
      database.aziendaHashtagList[3].immagine_hashtag = fileName;
    }

    database.aziendaHashtagList[0].nome = nome_hash_1;
    database.aziendaHashtagList[1].nome = nome_hash_2;
    database.aziendaHashtagList[2].nome = nome_hash_3;
    database.aziendaHashtagList[3].nome = nome_hash_4;
    database.currentAzienda.nome_azienda = nome;
    database.currentAzienda.descrizione = descrizione;
    database.UpdateHashtag();
    database.UpdateAzienda();
  }

  void setCurrentContext(BuildContext context) {
    database.currentcontext = context;
  }

  Future<void> ThereIsCall() async {
    //cerca se l'azienda corrente sta venendo chiamata
    if (database.isAzienda) {
      //si attiva solo se è un azienda
      List<Chiamata> listchiamate = await database.getChiamateList();
      List<Utente> listuser = await database.getUserList();
      listchiamate.forEach((current_chiamata) {
        if (current_chiamata.id_azienda == database.currentAzienda.id) {
          listuser.forEach((current_user) async {
            if (current_chiamata.id_utente == current_user.id) {
              await _handleCameraAndMic(Permission.camera);
              await _handleCameraAndMic(Permission.microphone);
              await database.RemoveCall(new Chiamata(
                  current_chiamata.id_azienda, current_user.id, 7, 7));

              Route route = MaterialPageRoute(
                  builder: (context) => Call(
                      channelName: "ChiamataN" +
                          current_chiamata.id_azienda.toString() +
                          current_user.id.toString() //da nome canale univoco
                      ,
                      user: current_user));
              Navigator.push(database.currentcontext, route);
            }
          });
        }
      });
    }
  }

  Future<void> ChiamaAzienda(int id_azienda, BuildContext context) async {
    Azienda azienda_chiamata;
    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);
    List<Azienda> list = [];
    list = await database.getAziendaList();
    list.forEach((element) {
      if (element.id == id_azienda) {
        azienda_chiamata = element;
      }
    });
    await database
        .addChiamata(new Chiamata(id_azienda, database.currentUser.id, 10, 11));
    Route route = MaterialPageRoute(
        builder: (context) => Call(
              channelName: "ChiamataN" +
                  id_azienda.toString() +
                  database.currentUser.id.toString(),
              azienda: azienda_chiamata, //da nome canale univoco
            ));
    database.ListenOfferta();
    Navigator.push(context, route);
  }

  Future<void> _handleCameraAndMic(Permission permission) async {
    final status = await permission.request();
    print(status);
  }

  Future<void> LanciaOfferta(
      String titolo, String prezzo, String opzioneRitiro, Utente user) async {
    await database.addOfferta(new Offerta(titolo, int.parse(prezzo), '',
        database.currentAzienda.id, user.id, opzioneRitiro));
    print("added Offerta");
  }

  Future<void> ThereIsOfferta() async {
    print(database.isAzienda);
    if (!database.isAzienda) {
      //si attiva solo se non è un azienda
      List<Offerta> listofferte = await database.getOfferteList();
      print(listofferte.length);
      listofferte.forEach((current_offerta) {
        if (current_offerta.id_utente == database.currentUser.id) {
          database.current_Offerta = current_offerta;
          database.thereisOfferta = true;
          database.RemoveOfferta(current_offerta);
          rebuildAllChildren(database.currentcontext);
        }
      });
    }
  }

  Future<void> VisualizzaProfiloAzienda(int id, BuildContext context) async {
    List<Azienda> aziende = await database.getAziendaList();
    List<Hashtag> hashtag_list = await database.getHashtagList();
    List<Hashtag> azienda_hash_list = [];
    Azienda currentAzienda;
    aziende.forEach((element) {
      if (element.id == id) {
        currentAzienda = element;
      }
    });
    hashtag_list.forEach((element) {
      if (element.id_azienda == id) {
        azienda_hash_list.add(new Hashtag(
            element.id_azienda, element.nome, element.immagine_hashtag));
      }
    });
    Route route = MaterialPageRoute(
        builder: (context) =>
            ProfiloAzienda_VistaUtente(currentAzienda, azienda_hash_list));
    Navigator.push(context, route);
  }
}
