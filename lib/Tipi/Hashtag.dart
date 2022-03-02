import 'package:cloud_firestore/cloud_firestore.dart';

class Hashtag{
  int id;
  int id_azienda;
  String nome;
  String immagine_hashtag;

 Hashtag(int id_azienda,String nome,[String immagine_hashtag="hashtagGenerico.jpg",int id=0]){
    this.id=id;
    this.id_azienda=id_azienda;
    this.nome=nome;
    this.immagine_hashtag=immagine_hashtag;
 }
 Hashtag.query(QueryDocumentSnapshot result){
   this.id_azienda=result ["id_Azienda"];
   this.nome=result ["Nome"];
   this.immagine_hashtag=result ["Immagine_Hashtag"];
   this.id=result ["id"];
 }
}