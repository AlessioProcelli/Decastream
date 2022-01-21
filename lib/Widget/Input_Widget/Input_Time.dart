



import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Tipi/Orario_Lavorativo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Metodi/Ridimensiona.dart';


class Input_Time extends StatelessWidget{
  bool active=false;
  Orario_Lavorativo orariList;

  Input_Time( Orario_Lavorativo orariList){
   this.orariList=orariList;
  }
  Widget build(BuildContext context){
    return
      Column(
        children:[
          TimeBox("Lunedi", orariList.getOrario(Giorni_Settimana.Lunedi)),
          TimeBox("Martedi", orariList.getOrario(Giorni_Settimana.Martedi)),
          TimeBox("Mercoledi", orariList.getOrario(Giorni_Settimana.Mercoledi)),
          TimeBox("Giovedi", orariList.getOrario(Giorni_Settimana.Giovedi)),
          TimeBox("Venerdi", orariList.getOrario(Giorni_Settimana.Venerdi)),
          TimeBox("Sabato", orariList.getOrario(Giorni_Settimana.Sabato)),
          TimeBox("Domenica", orariList.getOrario(Giorni_Settimana.Domenica)),
          ]
    );
   }

}

class TimeBox extends StatelessWidget{
  String label;
  TextEditingController apertura;
  TextEditingController chiusura;
  TimeBox(String label, Orario orario){
    this.label=label;
    apertura= new TextEditingController(text:orario.orario_apertura.toString());
    chiusura= new TextEditingController(text:orario.orario_chiusura.toString());
  }


  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
        Container(
          width:RicalcoloWidth(5, context),
          height:RicalcoloWidth(5, context),
          child:TextFormField(
          controller:apertura,
        ),),
        Text("-"),
        Container(
            width:RicalcoloWidth(5, context),
            height:RicalcoloWidth(5, context),
        child:
        TextFormField(
          controller:chiusura,
          style: TextStyle(
            fontFamily: 'MADE TOMMY',
            fontSize: RicalcoloWidth(11.0, context),
            color: const Color(0xff0e1116),
            fontWeight: FontWeight.w500,
          ),
        ))
      ],
    );
  }
}