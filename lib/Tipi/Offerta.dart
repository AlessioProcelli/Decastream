class Offerta{
  int id;
  String titolo;
  int prezzo;
  String nota_venditore;
  int id_azienda;
  int id_utente;
  String opzioneRitiro;

  Offerta( String titolo, int prezzo, String nota_venditore, int id_azienda, int id_utente, String opzioneRitiro,[int id=null]){
    this.id = id;
    this.titolo = titolo;
    this.prezzo = prezzo;
    this.nota_venditore = nota_venditore;
    this.id_azienda = id_azienda;
    this.id_utente = id_utente;
    this.opzioneRitiro = opzioneRitiro;
  }
}