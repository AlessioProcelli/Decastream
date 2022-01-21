import 'dart:ffi';



class Orario_Lavorativo{
  int idAzienda;
  List<Orario> orari=[];
  Orario_Lavorativo(int idAzienda){
    this.idAzienda=idAzienda;
  }

addGiorno(Giorni_Settimana giorno , int apertura, int chiusura){
  Orario o=new Orario(giorno,apertura,chiusura);
    orari.add(o);
  }
int getApertura(Giorni_Settimana giorno){
  int result;
  orari.forEach((el) {
    if(el.giorno==giorno){

      result= el.orario_apertura;
    }
  });
  return result;
}
  int getChiusura(Giorni_Settimana giorno){
    int result;
    orari.forEach((el) {
      if(el.giorno==giorno){

        result= el.orario_chiusura;
      }
    });
    return result;
  }
 Orario getOrario(Giorni_Settimana giorno){
   Orario result;
   orari.forEach((el) {
     if(el.giorno==giorno){

       result= el;
     }
   });
   return result;
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