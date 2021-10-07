//bottone annulla lancia offerta

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Metodi/Ridimensiona.dart';
import 'PopupOffertaLancio.dart';

class Annulla extends StatelessWidget {
  @override
  LancioOfferta current_offerta;
  Annulla(LancioOfferta offerta) {
    current_offerta=offerta;
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: RicalcoloHeight(65.0, context), right: RicalcoloWidth(220.0, context),
      ),
      width: RicalcoloWidth(30.0, context),
      height: RicalcoloHeight(30.0, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: const Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: const Color(0x41000000),
            offset: Offset(0.0, RicalcoloHeight(3.0, context)),
            blurRadius: 6,
          ),
        ],
      ),
      child:


          Container(

            child: TextButton(
              onPressed: () {
               current_offerta.OffertaChiusa();
              },
              child: Container(
                width: RicalcoloWidth(14.0, context),
                height: RicalcoloHeight(14.0, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //TODO immagine X
                    image: AssetImage('assets/image/xrossa.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),



            ),
          ),

    );
  }
}

const String _svg_pg60nj =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 0 0 L 16.22048568725586 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_cut4y7 =
    '<svg viewBox="211.5 478.8 16.2 16.2" ><path transform="translate(211.5, 478.82)" d="M 16.22048568725586 0 L 0 16.22048568725586" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
