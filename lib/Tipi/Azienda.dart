import 'package:everstream/Tipi/OrarioLavorativo.dart';

class Azienda{
  int id;
  int idIndirizzo;
  String descrizione;
  String tipologia;
  List<OrarioLavorativo> orari;
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
}