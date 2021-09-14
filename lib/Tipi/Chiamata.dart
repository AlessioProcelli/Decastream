class Chiamata{
  int id;
  int id_azienda;
  int id_utente;
  int data;
  int ora;

  Chiamata(int id_azienda,int id_utente,int data, int ora,[int id=0]){
    this.id=id;
    this.id_utente=id_utente;
    this.id_azienda=id_azienda;
    this.data = data;
    this.ora = ora;
  }
}