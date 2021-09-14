import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Call.dart';
import '../../Ridimensiona.dart';
import 'AnnullaLanciaOfferta.dart';
import 'BottoneLanciaOfferta.dart';
import 'BoxPopupLancia.dart';

//classe principale LANCIO OFFERTA

class LancioOfferta extends StatelessWidget {
  Box parametri=Box();
  CallPageState current_call;
  LancioOfferta( CallPageState call){
    current_call=call;
  }
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return Column(
            children: <Widget> [

              //annulla
              Container(

                child: Annulla(this),
              ),

              //box
              Expanded(
                flex: 0,
                child: parametri,
              ),

              //lancia
              Expanded(
                flex: 0,
                  child: Lancia(this),
              ),
            ],
          );

  }
  void OffertaLanciata(){


    current_call.LanciaOfferta();
  }
  void OffertaChiusa(){
    current_call.OffertaChiusa();
  }
}

const String _svg_w8v2x5 =
    '<svg viewBox="76.5 299.5 222.0 62.0" ><path transform="translate(76.5, 299.5)" d="M 0 0 L 222 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(76.5, 361.5)" d="M 0 0 L 222 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pg60nj =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 0 0 L 16.22048568725586 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_cut4y7 =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 16.22048568725586 0 L 0 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_pm9ol6 =
    '<svg viewBox="130.5 428.5 8.0 8.0" ><path transform="translate(130.5, 428.5)" d="M 0 0 L 8 8" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_2yorei =
    '<svg viewBox="130.5 428.5 8.0 8.0" ><path transform="translate(130.5, 428.5)" d="M 0 8 L 8 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
