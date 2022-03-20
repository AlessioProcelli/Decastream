import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/Tipi/Hashtag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../Metodi/Ridimensiona.dart';
import 'ControllerCerca.dart';

class VisualizzatoreRicerca extends StatelessWidget {
  ControllerCerca controller;
  List<Azienda> listA;
  CollectionReference aziende;
  CollectionReference hashtag;

  @override
  VisualizzatoreRicerca() {
    controller = new ControllerCerca();
    aziende = FirebaseFirestore.instance.collection("Aziende");
    hashtag = FirebaseFirestore.instance.collection("Hashtag");
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: RicalcoloWidth(7.0, context),
          right: RicalcoloWidth(7.0, context)),
      child: FutureBuilder(
          future: controller.getAziendeList(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Azienda>> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            return new GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 23 / 24,
                  maxCrossAxisExtent: RicalcoloHeight(280.0, context),
                  crossAxisSpacing: RicalcoloWidth(14.0, context),
                  mainAxisSpacing: RicalcoloWidth(28.0, context)),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext ctx, index) {
                //2 row

                ///bottone visita azienda
                return FloatingActionButton(
                  onPressed: () {
                    visualizzaProfiloAzienda(snapshot.data[index].id, context);
                  },

                  ///contorno rosso
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: RicalcoloWidth(1.0, context),
                          color: const Color(0xffe00a17)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          /// BOX Immagine Azienda

                          Stack(children: <Widget>[
                            /// Immagine Azienda Copertina
                            Container(
                              width: RicalcoloWidth(172.0, context),
                              height: RicalcoloHeight(92.0, context),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22.0),
                                  topRight: Radius.circular(22.0),
                                ),
                                image: DecorationImage(
                                  // foto_copertina
                                  image: NetworkImage(
                                      snapshot.data[index].img_copertina),
                                  fit: BoxFit.cover,
                                ),
                              ),

                              /// Immagine Azienda Profilo
                              child: Align(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Container(
                                  width: RicalcoloWidth(35.0, context),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: const Color(0xffffffff),
                                    border: Border.all(
                                        width: RicalcoloWidth(1.0, context),
                                        color: const Color(0xffe00a17)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x29000000),
                                        offset: Offset(
                                            0.0, RicalcoloHeight(5.0, context)),
                                        blurRadius: 9,
                                      ),
                                    ],
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8.0),
                                        ),
                                        image: DecorationImage(
                                          // foto_copertina
                                          image: NetworkImage(
                                              snapshot.data[index].img_profilo),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            /// Box I
                            Align(
                              alignment: AlignmentDirectional.topEnd,
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: RicalcoloHeight(7.0, context),
                                  right: RicalcoloWidth(7.0, context),
                                ),
                                child: Icon(
                                  Icons.info_outlined,
                                  color: Colors.black,
                                  size: RicalcoloWidth(15, context),
                                ),
                              ),
                            ),
                          ]),

                          /// Nome Azienda e Valutazione
                          Container(
                            margin: EdgeInsets.only(
                                top: RicalcoloHeight(8.0, context),
                                right: RicalcoloWidth(10.0, context),
                                left: RicalcoloWidth(10.0, context),
                                bottom: RicalcoloHeight(6.0, context)),
                            child: Row(
                              // prima row per nome azienda e stelle
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ///nome azienda
                                Container(
                                  width: RicalcoloWidth(100.0, context),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      snapshot.data[index].nome_azienda,
                                      // max 16 caratteri
                                      style: My_Light_Text(
                                          RicalcoloWidth(15.0, context),
                                          Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),

                                ///valutazione e stelle

                                Container(
                                  margin: EdgeInsets.only(
                                      top: RicalcoloHeight(3.0, context),
                                      right: RicalcoloWidth(1.0, context),
                                      bottom: RicalcoloHeight(1.0, context),
                                      left: RicalcoloWidth(1.0, context)),
                                  width: RicalcoloWidth(38.0, context),
                                  height: RicalcoloHeight(7.0, context),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: const AssetImage(
                                          "assets/image/stelle.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///Row per Hashtag

                          Row(
                            children: [
                              FutureBuilder(
                                future: controller
                                    .getHastagList(snapshot.data[index].id),
                                builder: (BuildContext context,
                                    AsyncSnapshot<List<Hashtag>>
                                        snapshotHashtag) {
                                  if (snapshotHashtag.hasError) {
                                    return Text('Something went wrong');
                                  }

                                  if (snapshotHashtag.connectionState ==
                                      ConnectionState.waiting) {
                                    return Text("Loading");
                                  }

                                  return Container(
                                    alignment: Alignment.center,
                                    width: RicalcoloWidth(169.0, context),
                                    height: RicalcoloHeight(10.0, context),
                                    child: ListView.builder(
                                        //shrinkWrap: true,
                                        //physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshotHashtag.data.length,
                                        itemBuilder: (BuildContext context,
                                            indexHastag) {
                                          return
                                              //riquadro hashtag
                                              AspectRatio(
                                                  aspectRatio: 4 / 1,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: RicalcoloWidth(
                                                            10.0, context)),
                                                    padding: EdgeInsets.only(
                                                        left: RicalcoloWidth(
                                                            3.0, context),
                                                        right: RicalcoloWidth(
                                                            3.0, context),
                                                        top: RicalcoloHeight(
                                                            3.0, context)),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                      color: const Color(
                                                          0xffffffff),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color(
                                                              0x3e000000),
                                                          offset: Offset(
                                                              0.0,
                                                              RicalcoloHeight(
                                                                  1.0,
                                                                  context)),
                                                          blurRadius: 1,
                                                        ),
                                                      ],
                                                    ),
                                                    child: FittedBox(
                                                      fit: BoxFit.fitWidth,
                                                      child: Text(
                                                        "#" +
                                                            snapshotHashtag
                                                                .data[
                                                                    indexHastag]
                                                                .nome,
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'MADE TOMMY',
                                                          color: const Color(
                                                              0xff0e1116),
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                    ),
                                                  ));
                                        }),
                                  );
                                },
                              ),
                            ],
                          ),

                          /// Bottone Chiamata
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                  top: RicalcoloHeight(5.0, context)),
                              width: RicalcoloWidth(70.0, context),
                              height: RicalcoloHeight(40.0, context),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    primary: Color(0xff0e1116),
                                    onPrimary: Colors.white,
                                    elevation: 8,
                                  ),
                                  label: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text('Chiama',
                                          style: TextStyle(
                                            fontFamily: 'MADE TOMMY',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ))),
                                  onPressed: () {
                                    chiama(snapshot.data[index].id, context);
                                  },
                                  icon: Icon(
                                    Icons.videocam,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }

  void chiama(int id, BuildContext context) {
    controller.ChiamaAzienda(id, context);
  }

  void visualizzaProfiloAzienda(int index, BuildContext context) {
    controller.VisualizzaProfiloAzienda(index, context);
  }
}

const String _svg_8l61jc =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#e00a17" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
