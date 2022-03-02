import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Tipi/Hashtag.dart';
import 'package:everstream/Tipi/OrarioLavorativo.dart';

import '../User.dart';

class Azienda extends User{
  List<Hashtag> hashtagList=[];
  OrarioLavorativo orarioLavorativo;
  int id;
  int idIndirizzo;
  String descrizione;
  String tipologia;
  String img_copertina;
  String img_profilo;
  String img_secondaria;
  String nome_azienda;
  int valutazione;
  int follower;
  String partita_iva;
  String email;
  String username;
  String password;

  Azienda(String nome_azienda, int id_indirizzo, String partita_iva,String tipologia_azienda, String email, String username, String password,
      [ String img_Copertina="sfond_generico.jpg",String img_Profilo="profiloGenerico.jpg",String descrizione="aggiungi descrizione qui",
      int follower=0,int id=0,String img_secondaria="secondariaGenerico.jpg"]
      ){
    this.nome_azienda = nome_azienda;
    this.idIndirizzo =id_indirizzo;
    this.partita_iva = partita_iva;
    this.email = email;
    this.tipologia=tipologia_azienda;
    this.username = username;
    this.password = password;
    this.img_copertina=img_Copertina;
    this.img_profilo=img_Profilo;
    this.descrizione=descrizione;
    this.follower=follower;
    this.id=id;
    this.img_secondaria=img_secondaria;
  }
  Azienda.query(QueryDocumentSnapshot result){
    this.nome_azienda =result ["Nome_Azienda"];
    this.idIndirizzo =result ["Id_Indirizzo"];
    this.partita_iva = result ["Partita_Iva"];
    this.tipologia=result ["Tipologia_Azienda"];
    this.email =result ["Email"];
    this.username =result ["Username"];
    this.password =result ["Password"];
    this.img_copertina=result ["Img_Copertina"];
    this.img_profilo=result ["Img_Profilo"];
    this.descrizione=result ["Descrizione"];
    this.follower=result ["Follower"];
    this.id=result ["id"];
    this.img_secondaria=result ["Img_Secondaria"];
  }


}