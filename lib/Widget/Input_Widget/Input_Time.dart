



import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Tipi/OrarioLavorativo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Metodi/Ridimensiona.dart';


class Input_Time extends StatelessWidget{
  bool modify=false;
  OrarioLavorativo orari;
  TimeBox lunedi;
  TimeBox martedi;
  TimeBox mercoledi;
  TimeBox giovedi;
  TimeBox venerdi;
  TimeBox sabato;
  TimeBox domenica;

  Input_Time( OrarioLavorativo orari){
   this.orari=orari;
  }
  Widget build(BuildContext context){
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          lunedi=TimeBox("Lunedi", orari.getOrario(Giorni_Settimana.Lunedi)),
          martedi=TimeBox("Martedi", orari.getOrario(Giorni_Settimana.Martedi)),
          mercoledi=TimeBox("Mercoledi", orari.getOrario(Giorni_Settimana.Mercoledi)),
          giovedi=TimeBox("Giovedi", orari.getOrario(Giorni_Settimana.Giovedi)),
          venerdi=TimeBox("Venerdi", orari.getOrario(Giorni_Settimana.Venerdi)),
          sabato=TimeBox("Sabato", orari.getOrario(Giorni_Settimana.Sabato)),
          domenica=TimeBox("Domenica", orari.getOrario(Giorni_Settimana.Domenica)),
          ]
    );
   }
  OrarioLavorativo getNuoviOrari(){
    return orari;
  }
  setModify(bool ceck){
    lunedi.setModify(ceck);
    martedi.setModify(ceck);
    mercoledi.setModify(ceck);
    giovedi.setModify(ceck);
    venerdi.setModify(ceck);
    sabato.setModify(ceck);
    domenica.setModify(ceck);
  }
}

class TimeBox extends StatelessWidget {
  String label;
  TextEditingController apertura;
  TextEditingController chiusura;
  bool modify=false;


  TimeBox(String label, Orario orario) {
    this.label = label;
    apertura = new TextEditingController(text: orario.orario_apertura.toString());
    chiusura = new TextEditingController(text: orario.orario_chiusura.toString());
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Text_Style(RicalcoloWidth(16, context), Color(0xff000000)),
          textAlign: TextAlign.left,
        ),
        Container(
          width: RicalcoloWidth(25, context),
          height: RicalcoloHeight(15, context),
          child: TextFormField(
            enabled: modify,
            controller: apertura,
            onTap: () {
              ClearText(apertura);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: Text_Style(RicalcoloWidth(14, context), Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
        ),
        Text("-"),
        Container(
          width: RicalcoloWidth(25, context),
          height: RicalcoloHeight(15, context),
          child: TextFormField(
            controller: chiusura,
            onTap: () {
              ClearText(chiusura);
            },
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: Text_Style(RicalcoloWidth(14, context), Color(0xff000000)),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
  setModify(bool ceck){
    modify=ceck;
  }
}


TextStyle Text_Style(double font_size, Color color) {
  return TextStyle(
    fontFamily: 'SF Pro Display',
    fontSize: font_size,
    color: color,
    fontWeight: FontWeight.w300,
  );
}