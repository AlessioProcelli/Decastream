import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Tipi/User.dart';

class Utente extends User{
  int id;
  String foto_profilo;
  String nome;
  String cognome;
  String data;  // 31/05/2000
  String genere;
  int id_Luogo;
  String email;
  String username;
  String password;
  String cellulare;

  Utente(String nome, String cognome, String data, String genere,int id_Luogo, String email ,String username ,
      String password,[int id=null,String foto_profilo="profiloGenerico.jpg",String cellulare="3480000000"] ){
    this.id=id;
    this.nome = nome;
    this.cognome = cognome;
    this.data = data;
    this.genere = genere;
    this.id_Luogo = id_Luogo;
    this.email = email;
    this.username = username;
    this.password = password;
    this.foto_profilo=foto_profilo;
    this.cellulare=cellulare;

  }
  Utente.query(QueryDocumentSnapshot result){
    this.nome=result["Nome"];
    this.cognome=result["Cognome"];
    this.data=result["Data_Nascita"];
    this.genere=result ["Sesso"];
    this.id_Luogo=result ["Id_luogo"];
    this.email=result["Email"];
    this.username=result["Username"];
    this.password =result ["Password"];
    this.id=result["id"];
    this.foto_profilo=result ["Foto_Profilo"];
    this.cellulare= result ["Cellulare"];
  }

  @override
  int getId() {
    return id;
  }


}