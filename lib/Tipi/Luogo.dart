class Luogo{
  int id;
  String paese;
  String provincia;
  String citta;

  Luogo(String paese, String provincia, String citta,  [int id=null]){
    this.id=id;
    this.paese = paese;
    this.provincia = provincia;
    this.citta = citta;
  }
}