

import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Tipi/Hashtag.dart';
import 'package:everstream/Tipi/Indirizzo.dart';
import 'package:everstream/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'Tipi/Azienda.dart';
import 'Tipi/Categoria.dart';
import 'Tipi/Chiamata.dart';
import 'Tipi/Luogo.dart';
import 'Tipi/Offerta.dart';
import 'Tipi/Utente.dart';

import 'dart:core';

class Database {
  BuildContext currentcontext;
  var chiamate;
  CollectionReference users; //riferimento a tabella database
  Utente currentUser; //usati per memorizzare credenziali di chi fa accesso
  Azienda currentAzienda;
  List<Hashtag> aziendaHashtagList = []; //tiene traccia degli hashtag aziendali
  bool isAzienda = false;// per capire qualche schermata porofilo fare visualizzare
  Offerta current_Offerta;
  bool thereisOfferta=false;
  Database() {
    init(); //inizializzazione a invocazione costruttore
  }


  void init() async {
    debugPrint("instance");
    await WidgetsFlutterBinding
        .ensureInitialized(); //comandi per inizializzare Firebase
    await Firebase
        .initializeApp(); //Sempre da eseguire prima di qualsiasi operazione su database
    debugPrint("fatto"); //altrimenti errori panico
  }

  Future <int> addChiamata(Chiamata call) async {
    int id = await nextId('Chiamate');
    FirebaseFirestore.instance.collection('Chiamate').add({
      'id': id,
      'id_Azienda': call.id_azienda,
      'id_Utente': call.id_utente,
      'data': call.data,
      'ora': call.ora,
    }) //.then sono eventi che succedano nel futuro
        .then((value) => print("Call Added")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed to add Call: $error"));
    return id;
  }

  Future <int> addHastag(Hashtag hash) async {
    int id = await nextId('Hashtag');
    FirebaseFirestore.instance.collection('Hashtag').add({
      'id': id,
      'Immagine_Hashtag': await getPathFotoProfilo(hash.immagine_hashtag),
      'Nome': hash.nome,
      'id_Azienda': hash.id_azienda,
    }) //.then sono eventi che succedano nel futuro
        .then((value) =>
        print("Hashtag Added")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed to add Hashtag: $error"));
    return id;
  }

  Future<int> addUser(Utente user) async {
    int id = await nextId('utenti');
    FirebaseFirestore.instance.collection('utenti').add({
      'id': id,
      'Foto_Profilo': await getPathFotoProfilo(user.foto_profilo),
      'Id_luogo': user.id_Luogo,
      'Nome': user.nome,
      'Cognome': user.cognome,
      'Data_Nascita': user.data,
      'Sesso': user.genere,
      'Email': user.email,
      'Username': user.username,
      'Password': user.password,
      'Cellulare': user.cellulare,
    }) //.then sono eventi che succedano nel futuro
        .then((value) => print("User Added")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed to add user: $error"));
    return id;
  }

  Future<int> addAzienda(Azienda azienda) async {
    int id = await nextId('Aziende');
    FirebaseFirestore.instance.collection('Aziende').add({
      'id': id,
      'Nome_Azienda': azienda.nome_azienda,
      'Id_Indirizzo': azienda.id_indirizzo,
      'Descrizione': azienda.descrizione,
      'Tipologia_Azienda': azienda.tipologia,
      'Id_Categoria1': null,
      'Id_Categoria2': null,
      'Id_Categoria3': null,
      'Id_Categoria4': null,
      'Orario_Lunedi': null,
      'Orario_Martedi': null,
      'Orario_Mercoledi': null,
      'Orario_Giovedi': null,
      'Orario_Venerdi': null,
      'Orario_Sabato': null,
      'Orario_Domenica': null,
      'Valutazione': null,
      'Follower': azienda.follower,
      'Partita_Iva': azienda.partita_iva,
      'Email': azienda.email,
      'Username': azienda.username,
      'Password': azienda.password,
      'Img_Copertina': await getPathFotoProfilo(azienda.img_copertina),
      'Img_Profilo': await getPathFotoProfilo(azienda.img_profilo),
      'Img_Secondaria': await getPathFotoProfilo(azienda.img_secondaria),
    }) //.then sono eventi che succedano nel futuro
        .then((value) =>
        print("Azienda Added")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed to add Azienda: $error"));
    return id;
  }


  Future<int> addCategoria(Categoria categoria) async {
    int id = await nextId('Categorie');
    FirebaseFirestore.instance.collection('Categorie').add({
      'id': id,
      'Nome': categoria.nome,
      'Hashtag': categoria.hashtag,
      'Descrizione': categoria.descrizione,})
        .then((value) =>
        print("Categoria Aggiunta")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed Categoria: $error"));
    return id;
  }

  Future<int> addLuogo(Luogo luogo) async {
    int id = await nextId('Luoghi');
    FirebaseFirestore.instance.collection('Luoghi').add({
      'id': id,
      'Paese': luogo.paese,
      'Provincia': luogo.provincia,
      'Citta': luogo.citta,})
        .then((value) =>
        print("Luogo Aggiunto")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed Luogo: $error"));
    return id;
  }

  Future<int> addIndirizzo(Indirizzo indirizzo) async {
    int id = await nextId('Indirizzi');
    FirebaseFirestore.instance.collection('Indirizzi').add({
      'id': id,
      'Id_Luogo': indirizzo.id_Luogo,
      'Via': indirizzo.via,
      'N_Civico': indirizzo.n_Civico,})
        .then((value) =>
        print("Indirizzo Aggiunto")) //*appena il futuro si concretizza
        .catchError((error) => print("Failed Indirizzo: $error"));
    return id;
  }

  Future <int> addOfferta(Offerta offerta) async {
    int id = await nextId('Offerta');
    FirebaseFirestore.instance.collection('Offerta').add({
      'id': id,
      'id_Azienda': offerta.id_azienda,
      'id_Utente': offerta.id_utente,
      'opzioneRitiro': offerta.opzioneRitiro,
      'prezzo': offerta.prezzo,
      'titolo': offerta.titolo,
    }).then((value) => print("Offerta Aggiunta"))
        .catchError((error) => print("Failed Offerta: $error"));
    return id;
  }

  Future<List<QueryDocumentSnapshot>> getTable(String table) async {
    /*Ritorna query contenente tabella poi con .docs ne prende i dati come lista di QueryDocumentSnapshot */
    QuerySnapshot query = await FirebaseFirestore.instance.collection(table)
        .get();
    return query.docs;
  }

  Future<void> addMessage(String table, String messaggio) async {
    int leng = await nextId(table);

    FirebaseFirestore.instance.collection(table).doc(
        "C" + String.fromCharCode(leng)).set({
      //con .doc tra le parentesi cè il valore del id che dai al documento
      'id': leng,
      // me lo salvo anche al interno per recuperarlo più facile dopo
      'messaggio': messaggio,
    })
        .then((value) => print("Messaggio Added"))
        .catchError((error) => print("Failed to add messaggio: $error"));
  }

  void setcurrentUser(Utente user) {
    this.currentUser = user;
    this.isAzienda = false;
  }

  void setCurrentAzienda(Azienda azienda, List<Hashtag> list) {
    this.currentAzienda = azienda;
    this.isAzienda = true;
    this.aziendaHashtagList = list;
  }

  Future<int> TableLength(String nome) async {
    //calcola numero di elementi in una tabella
    int leng = 0;
    CollectionReference utenti; // appoggio query di tabella
    utenti = FirebaseFirestore.instance.collection(
        nome); //prende tabella "Chat"+"nomeUtente"
    QuerySnapshot query = await utenti.get();
    if (query.docs.isNotEmpty) { //tutti i messaggi nella tabella
      leng = query.docs
          .length; //prende la lunghezza per assegnare l'id documento crescente al ultimo mess
    }
    return leng;
  }

  Future<bool> FindIdElement(String table, int id) async {
    //trovo un elemento tramite l'id in una tabella data in input
    bool find = false;
    QuerySnapshot query = await FirebaseFirestore.instance.collection(table)
        .get();
    query.docs.forEach((element) {
      if (element["id"] == id) {
        find = true;
      }
    });
    return find;
  }

  Future<List<Luogo>> getLuoghiList() async {
    List<Luogo> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Luoghi')
        .get();
    query.docs.forEach((element) {
      list.add(new Luogo(
        element["Paese"],
        element["Provincia"],
        element["Citta"],
        element["id"],));
    }

    );
    return list;
  }
  Future<List<Offerta>> getOfferteList() async {
    List<Offerta> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Offerta')
        .get();
    query.docs.forEach((element) {
      list.add(new Offerta(
          element["titolo"],
          element["prezzo"],
          "nota_venditore",
          element["id_Azienda"],
          element["id_Utente"],
          element["opzioneRitiro"],
          element["id"]));
    }

    );
    return list;
  }

  Future<List<Utente>> getUserList() async {
    List<Utente> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('utenti')
        .get();
    query.docs.forEach((element) {
      list.add(new Utente(
          element["Nome"],
          element["Cognome"],
          element["Data_Nascita"],
          element ["Sesso"],
          element ["Id_luogo"],
          element["Email"],
          element["Username"],
          element ["Password"],
          element["id"],
          element ["Foto_Profilo"],
          element ["Cellulare"]));
    }
    );
    return list;
  }

  Future<List<Chiamata>> getChiamateList() async {
    List<Chiamata> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection(
        'Chiamate').get();
    query.docs.forEach((element) {
      list.add(new Chiamata(
          element[ 'id_Azienda'], element[ 'id_Utente'], element[ 'data'],
          element[ 'ora'], element[ 'id']));
    }
    );

    return list;
  }

  Future<List<Azienda>> getAziendaList() async {
    List<Azienda> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Aziende')
        .get();
    query.docs.forEach((element) {
      list.add(new Azienda(
          element ["Nome_Azienda"],
          element ["Id_Indirizzo"],
          element ["Partita_Iva"],
          element ["Tipologia_Azienda"],
          element ["Email"],
          element ["Username"],
          element ["Password"],
          element ["Img_Copertina"],
          element ["Img_Profilo"],
          element ["Descrizione"],
          element ["Follower"],
          element ["id"],
          element ["Img_Secondaria"]));
    }
    );
    return list;
  }


  Future<List<Hashtag>> getHashtagList() async {
    List<Hashtag> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Hashtag')
        .get();
    query.docs.forEach((element) {
      list.add(new Hashtag(element ["id_Azienda"], element ["Nome"],
          element ["Immagine_Hashtag"], element ["id"]));
    }
    );
    return list;
  }

  Future<String> getPathFotoProfilo(String nome) async {
    String url = nome;
    if (!nome.contains(
        "https://")) { // se continee gia indirizzo non lo ricerca per evitare errori
      final ref = FirebaseStorage.instance.ref().child(nome);
      url = await ref.getDownloadURL();
    }

    return url;
  }

  Future<void> updateUser() async {
    //fa update del utente in base a le modifiche apportate in locale a quello corrente
    String documentid;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('utenti').
    where('id', isEqualTo: currentUser.id).get();
    documentid=query.docs.first.id;
    String pathFotoProfilo;
    pathFotoProfilo = await getPathFotoProfilo(currentUser.foto_profilo);
    FirebaseFirestore.instance.collection('utenti')
        .doc(documentid)
        .update({
      'Foto_Profilo': pathFotoProfilo,
      'Nome': currentUser.nome,
      'Cognome': currentUser.cognome,
      'Email': currentUser.email,
      'Username': currentUser.username,
      'Password': currentUser.password,
      'Cellulare': currentUser.cellulare})
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  Future<void> UpdateAzienda() async {
    //fa update del utente in base a le modifiche apportate in locale a quello corrente
    String documentid;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Aziende')
        .where('id', isEqualTo: currentAzienda.id).get();
        documentid = query.docs.first.id;
    String pathFotoProfilo;
    pathFotoProfilo = await getPathFotoProfilo(currentAzienda.img_profilo);
    String pathFotoCopertina;
    pathFotoCopertina = await getPathFotoProfilo(currentAzienda.img_copertina);
    FirebaseFirestore.instance.collection('Aziende')
        .doc(documentid)
        .update({
      'Img_Profilo': pathFotoProfilo,
      'Img_Copertina': pathFotoCopertina,
      'Nome_Azienda': currentAzienda.nome_azienda,
      'Descrizione': currentAzienda.descrizione,
    })
        .then((value) => print("Azienda Updated"))
        .catchError((error) => print("Failed to update Azienda: $error"));
  }

  Future<void> UpdateHashtag() async {
    //fa update del utente in base a le modifiche apportate in locale a quello corrente

    QuerySnapshot query = await FirebaseFirestore.instance.collection('Hashtag')
        .get();

    aziendaHashtagList.forEach((hashtag) async {
      String documentid;
      QuerySnapshot query = await FirebaseFirestore.instance.collection('Hashtag')
          .where('id', isEqualTo: hashtag.id).get();

          documentid = query.docs.first.id;
      String pathHashImage;
      pathHashImage = await getPathFotoProfilo(hashtag.immagine_hashtag);
      FirebaseFirestore.instance.collection('Hashtag')
          .doc(documentid)
          .update({
        'Immagine_Hashtag': pathHashImage,
        'Nome': hashtag.nome,
      })
          .then((value) => print("Hashtag Updated"))
          .catchError((error) => print("Failed to update Hashtag: $error"));
    });
  }


  Future<void> AddFoto(String nome, File foto) async {
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child(nome);
    await ref.putFile(foto);
  }

  void listenChiamate() {
    chiamate = FirebaseFirestore.instance.collection("Chiamate")
        .snapshots()
        .listen((event) {
      controller.ThereIsCall();
    });
  }
  void ListenOfferta() {
    chiamate = FirebaseFirestore.instance.collection("Offerta")
        .snapshots()
        .listen((event) {
      controller.ThereIsOfferta();
    });
  }
  OnAddedAction(Event event) {
    print("frushh");
  }


  Future<void> RemoveCall(Chiamata call) async {
    //fa update del utente in base a le modifiche apportate in locale a quello corrente
    String id_Chiamata;
    QuerySnapshot query = await FirebaseFirestore.instance.collection(
        'Chiamate').get();
    query.docs.forEach((element) {
      if (element["id_Azienda"] == call.id_azienda &&
          element["id_Utente"] == call.id_utente) {
        id_Chiamata = element.id;
      }
    });
    await FirebaseFirestore.instance.collection('Chiamate')
        .doc(id_Chiamata)
        .delete();
  }
  Future<void> RemoveOfferta(Offerta offerta) async {
    //fa update del utente in base a le modifiche apportate in locale a quello corrente
    String id_Offerta;
    QuerySnapshot query = await FirebaseFirestore.instance.collection(
        'Offerta').get();
    query.docs.forEach((element) {
      if (element["id_Azienda"] == offerta.id_azienda &&
          element["id_Utente"] == offerta.id_utente) {
        id_Offerta = element.id;
      }
    });
    await FirebaseFirestore.instance.collection('Offerta')
        .doc(id_Offerta)
        .delete();
  }

  Future<void> RemoveChat(String nome) async {
    FirebaseFirestore.instance.collection(nome).get().then((snapshot) {
      for (DocumentSnapshot doc in snapshot.docs) {
        doc.reference.delete();
      }
    });
  }

  Future<int> nextId(String nome) async{
    QuerySnapshot query = await FirebaseFirestore.instance.collection(nome)
        .get();
    int biggestId=0;
    query.docs.forEach((element) {
      if (element ["id"]>biggestId) {
        biggestId = element["id"];
      }
    });
    return biggestId+1;
  }

  Future<Utente> findUser(String username) async {
    Utente user = null;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('utenti').
    where('Username', isEqualTo: username).get();
    if (query.docs.isNotEmpty) {
      QueryDocumentSnapshot first = query.docs.first;
      user = new Utente(
          first["Nome"],
          first["Cognome"],
          first["Data_Nascita"],
          first ["Sesso"],
          first ["Id_luogo"],
          first["Email"],
          first["Username"],
          first ["Password"],
          first["id"],
          first ["Foto_Profilo"],
          first ["Cellulare"]);
    }

    return user;
  }
  Future<Utente> findUserById(int id) async {
    Utente user = null;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('utenti').
    where('id', isEqualTo: id).get();
    if (query.docs.isNotEmpty) {
      QueryDocumentSnapshot first = query.docs.first;
      user = new Utente(
          first["Nome"],
          first["Cognome"],
          first["Data_Nascita"],
          first ["Sesso"],
          first ["Id_luogo"],
          first["Email"],
          first["Username"],
          first ["Password"],
          first["id"],
          first ["Foto_Profilo"],
          first ["Cellulare"]);
    }

    return user;
  }

  Future<Azienda> findAzienda(String username) async {
    Azienda company = null;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Aziende')
        .
    where('Username', isEqualTo: username)
        .get();
    if (query.docs.isNotEmpty) {
      QueryDocumentSnapshot first = query.docs.first;
      company = new Azienda(
          first ["Nome_Azienda"],
          first ["Id_Indirizzo"],
          first ["Partita_Iva"],
          first ["Tipologia_Azienda"],
          first ["Email"],
          first ["Username"],
          first ["Password"],
          first ["Img_Copertina"],
          first ["Img_Profilo"],
          first ["Descrizione"],
          first ["Follower"],
          first ["id"],
          first ["Img_Secondaria"]);
    }

    return company;
  }


  Future<Azienda> findAziendaById(int id) async {
    Azienda company = null;
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Aziende')
        .
    where('id', isEqualTo: id)
        .get();
    if (query.docs.isNotEmpty) {
      QueryDocumentSnapshot first = query.docs.first;
      company = new Azienda(
          first ["Nome_Azienda"],
          first ["Id_Indirizzo"],
          first ["Partita_Iva"],
          first ["Tipologia_Azienda"],
          first ["Email"],
          first ["Username"],
          first ["Password"],
          first ["Img_Copertina"],
          first ["Img_Profilo"],
          first ["Descrizione"],
          first ["Follower"],
          first ["id"],
          first ["Img_Secondaria"]);
    }

    return company;
  }


  Future<List<Hashtag>> findCompanyHashtag(int id) async {
    List<Hashtag> list = [];
    QuerySnapshot query = await FirebaseFirestore.instance.collection('Hashtag')
    .where('id_Azienda',isEqualTo: id).get();
    query.docs.forEach((element) {
      list.add(new Hashtag(element ["id_Azienda"], element ["Nome"],
          element ["Immagine_Hashtag"], element ["id"]));
    }
    );
    return list;
  }

  
    Future<Chiamata> findChiamateAziendat(int id) async {
      Chiamata call = null;
      QuerySnapshot query = await FirebaseFirestore.instance.collection(
          'Chiamate'). where('id_Azienda', isEqualTo: id).get();
      if (query.docs.isNotEmpty) {
        QueryDocumentSnapshot first = query.docs.first;
        call=new Chiamata(
            first[ 'id_Azienda'], first[ 'id_Utente'], first[ 'data'],
            first[ 'ora'], first[ 'id']);
      }

      return call;
    }
   

}