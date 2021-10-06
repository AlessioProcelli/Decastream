
import 'package:adobe_xd/pinned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everstream/Tipi/Azienda.dart';
import 'package:everstream/Widget_Grafici/Metodi_Grafici.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Controller.dart';

import '../Call.dart';
import '../Call.dart';
import '../Ridimensiona.dart';
import '../main.dart';

//snapshot.data.docs[index]['Img_Profilo']
//snapshot.data.docs[index]['Nome_Azienda']
//if(snapshot.data.docs[index]['id'] == aziende.id)

class Visualizzatore_Ricerca extends StatelessWidget {

  List<Azienda> listA;
  CollectionReference aziende;
  CollectionReference hashtag;
  @override
  Visualizzatore_Ricerca() {
   aziende = FirebaseFirestore.instance.collection("Aziende");
   hashtag = FirebaseFirestore.instance.collection("Hashtag");
  }

  Widget build(BuildContext context) {



    return  Container(
     margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context),right: RicalcoloWidth(7.0, context)),
    child:StreamBuilder<QuerySnapshot>(
        stream: aziende.snapshots(),
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasError) {
        return Text('Something went wrong');
      }

      if (snapshot.connectionState == ConnectionState.waiting) {
        return Text("Loading");
      }

      return new GridView.builder(

        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:RicalcoloHeight(200.0, context) , crossAxisSpacing:RicalcoloWidth(14.0, context),
            mainAxisSpacing:RicalcoloWidth(28.0, context)),
        itemCount: snapshot.data.docs.length,
        itemBuilder: (BuildContext ctx, index) {
          //2 row

          ///contorno rosso
          return Container(
            width: RicalcoloWidth(169.0, context),
            height: RicalcoloHeight(214.0, context),
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

            child: Wrap(
              children: [
 Stack(children:<Widget>[
   Container(
     width: RicalcoloWidth(180.0, context),
     height: RicalcoloHeight(92.0, context),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(22.0),
         topRight: Radius.circular(22.0),
       ),
       image: DecorationImage( // foto_copertina
         image: NetworkImage(snapshot.data.docs[index]['Img_Profilo']),
         fit: BoxFit.cover,
       ),
     ),

     //box i
     child:TextButton(onPressed: (){
       //print("top");
        Visualizza_ProfiloAzienda(snapshot.data.docs[index]['id'],context);

     },
     ),
   ),
                /// Box I
                Align(
              alignment: AlignmentDirectional.topEnd,
                child:Container(
                  margin: EdgeInsets.only(
                      top: RicalcoloHeight(4.0, context),
                      right: RicalcoloWidth(10.0, context),
                      ),
                  width: RicalcoloWidth(11.0, context),
                  height: RicalcoloHeight(11.0, context),

                    child:Icon(
                      Icons.info_outlined,
                      color:Colors.black,
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
                            bottom: RicalcoloHeight(3.0, context)),
                        child: Row(
                          // prima row per nome azienda e stelle
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///nome azienda
                            Text(
                              snapshot.data.docs[index]['Nome_Azienda'],
                              // max 16 caratteri
                              style: My_Light_Text(
                                  RicalcoloWidth(14.0, context), Colors.black),
                              textAlign: TextAlign.center,
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
                      Padding(padding: EdgeInsets.only(top:RicalcoloHeight(25.0, context))),

///Row per Hashtag

                    Row(
                      children: [
                        StreamBuilder<QuerySnapshot>(

                          stream: hashtag.snapshots(),
                          builder: (BuildContext context,
                              AsyncSnapshot<QuerySnapshot> snapshotHashtag) {
                            if (snapshotHashtag.hasError) {
                              return Text('Something went wrong');
                            }

                            if (snapshotHashtag.connectionState ==
                                ConnectionState.waiting) {
                              return Text("Loading");
                            }


                            List<QueryDocumentSnapshot> listQ = [];
                            snapshotHashtag.data.docs.forEach((element) {
                              if(element["id_Azienda"] == snapshot.data.docs[index]["id"])
                                 listQ.add(element);

                            });


                              return Container(

                                  alignment: Alignment.center,
                                width: RicalcoloWidth(169.0, context),
                                height: RicalcoloHeight(10.0, context),
                                child:ListView.builder(
                                    //shrinkWrap: true,
                                  //physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: listQ.length,
                                itemBuilder: (BuildContext context, indexHastag) {
                                  return
                                    //riquadro hashtag
                                      Container(
                                        margin: EdgeInsets.only(left: RicalcoloWidth(10.0, context)),
                                        padding:  EdgeInsets.only(left: RicalcoloWidth(3.0, context),right: RicalcoloWidth(3.0, context),top: RicalcoloHeight(3.0, context)),
                                        decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0x3e000000),
                                                    offset: Offset(
                                                        0.0,
                                                        RicalcoloHeight(
                                                            3.0, context)),
                                                    blurRadius: 6,
                                                  ),
                                                ],
                                              ),
                                            child: Text(
                                             "#"+ listQ[indexHastag]["Nome"],
                                              style: TextStyle(

                                                fontFamily: 'MADE TOMMY',
                                                fontSize: RicalcoloWidth(
                                                    5.0, context),
                                                color: const Color(0xff0e1116),
                                                fontWeight: FontWeight.w300,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                              );
                                }
                                ),



                                  );

                          },
                        ),
                      ],
                    ),

                    Row( // terza Row per bottone nero e maps
                    children: [

                    //riquadro nero camera
                    Container(
                      margin: EdgeInsets.only(top: RicalcoloHeight(
                          10.0, context),
                          right: RicalcoloWidth(1.0, context),
                          bottom: RicalcoloHeight(10.0, context),
                          left: RicalcoloWidth(27.0, context)),
                      width: RicalcoloWidth(72.0, context),
                      height: RicalcoloHeight(28.0, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xff0e1116),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x3b000000),
                            offset: Offset(0.0, RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: TextButton(
                        onPressed:() {
                          Chiama(snapshot.data.docs[index]["id"],context);
          },
                        child: Container(
                          /*margin: EdgeInsets.only(
                              top: RicalcoloHeight(9.0, context),
                              right: RicalcoloWidth(28.0, context),
                              bottom: RicalcoloHeight(9.0, context),
                              left: RicalcoloWidth(28.0, context)),*/
                          width: RicalcoloWidth(15, context),
                          height: RicalcoloHeight(9, context),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image/videocameraWHITE.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                      ),

                    ),

                    //riquadro luogo
                    Container(
                      margin: EdgeInsets.only(top: RicalcoloHeight(
                          10.0, context),
                          right: RicalcoloWidth(6.0, context),
                          bottom: RicalcoloHeight(1.0, context),
                          left: RicalcoloWidth(25.0, context)),
                      width: RicalcoloWidth(27.0, context),
                      height: RicalcoloHeight(28.0, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: const Color(0xadf5f5f5),
                      ),


                      child: Column(
                        children: [

                          // immagine maps
                          Container(
                            margin: EdgeInsets.only(
                                top: RicalcoloHeight(6.0, context),
                                right: RicalcoloWidth(6.0, context),
                                bottom: RicalcoloHeight(2.0, context),
                                left: RicalcoloWidth(6.0, context)),
                            width: RicalcoloWidth(7.0, context),
                            height: RicalcoloHeight(9.0, context),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                //TODO immagine maps
                                image: NetworkImage(
                                    'https://firebasestorage.googleapis.com/v0/b/prova-24d5b.appspot.com/o/geo.png?alt=media&token=eb018e11-036d-43b1-ae78-76a16c085681'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          //scritta luogo
                          Text(
                            'LUOGO',
                            style: TextStyle(
                              fontFamily: 'MADE TOMMY',
                              fontSize: RicalcoloWidth(4.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.start,

                          ),

                        ],

                      ),

                    ),

                    ],
                ),



              ],
            ),


          );
        },
      );
    }
    ),
    );
  }
  void Chiama(int id,BuildContext context){
    controller.ChiamaAzienda(id,context);
  }

  void Visualizza_ProfiloAzienda(int index,BuildContext context) {
    controller.VisualizzaProfiloAzienda(index, context);
  }
}



const String _svg_8l61jc =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#e00a17" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
