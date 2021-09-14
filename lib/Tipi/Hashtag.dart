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
}