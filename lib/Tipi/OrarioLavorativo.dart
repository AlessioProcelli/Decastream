import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';



class OrarioLavorativo{
  int idAzienda;
  List<Orario> orari= new List.filled(7,null);
  OrarioLavorativo(int idAzienda){
    this.idAzienda=idAzienda;
  }
  OrarioLavorativo.query(QueryDocumentSnapshot result){
    idAzienda=result['id'];
    orari[0]= new Orario(Giorni_Settimana.Lunedi, result['Lunedi_Apertura'], result['Lunedi_Chiusura']);
    orari[1]= new Orario(Giorni_Settimana.Martedi, result['Martedi_Apertura'], result['Martedi_Chiusura']);
    orari[2]= new Orario(Giorni_Settimana.Mercoledi, result['Mercoledi_Apertura'], result['Mercoledi_Chiusura']);
    orari[3]= new Orario(Giorni_Settimana.Giovedi, result['Giovedi_Apertura'], result['Giovedi_Chiusura']);
    orari[4]= new Orario(Giorni_Settimana.Venerdi, result['Venerdi_Apertura'], result['Venerdi_Chiusura']);
    orari[5]= new Orario(Giorni_Settimana.Sabato, result['Sabato_Apertura'], result['Sabato_Chiusura']);
    orari[6]= new Orario(Giorni_Settimana.Domenica, result['Domenica_Apertura'], result['Domenica_Chiusura']);
  }

void addGiorno(Giorni_Settimana giorno,int apertura, int chiusura){
    orari[giorno.index]=new Orario(giorno, apertura, chiusura);
}
  int getApertura(Giorni_Settimana giorno){
    return orari[giorno.index].orario_apertura;
  }
  int getChiusura(Giorni_Settimana giorno){
    return orari[giorno.index].orario_chiusura;
  }
 Orario getOrario(Giorni_Settimana giorno){
    return orari[giorno.index];
 }
}

enum Giorni_Settimana {
  Lunedi,
  Martedi,
  Mercoledi,
  Giovedi,
  Venerdi,
  Sabato,
  Domenica
}
class Orario{
  Giorni_Settimana giorno;
  int orario_apertura;
  int orario_chiusura;
  Orario(Giorni_Settimana giorno , int apertura, int chiusura){
    this.giorno=giorno;
    this.orario_apertura=apertura;
    this.orario_chiusura=chiusura;
  }
}