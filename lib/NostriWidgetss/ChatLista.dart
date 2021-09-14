import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Ridimensiona.dart';

class ChatList extends StatelessWidget {
  @override
  String  chat;
  ScrollController controller = new ScrollController();

  ChatList(String User){
    chat="Chat"+User;
  }
  Widget build(BuildContext context) {
    CollectionReference chat = FirebaseFirestore.instance.collection(this.chat);
    return StreamBuilder<QuerySnapshot>(
      stream: chat.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (controller.hasClients){
          controller.jumpTo(controller.position.maxScrollExtent);
      }
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }



        return new ListView.builder(
          controller: controller,


            itemCount: snapshot.data.docs.length,
          itemBuilder:  (BuildContext context, int index) {
            return new ListTile(
                title:Container(
                  child:Row(

                    children: <Widget>[
                      Container(
                        width: RicalcoloWidth(17.0, context),
                        height: RicalcoloHeight(17.0, context),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage("assets/image/freccia.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      new Text(
                        snapshot.data.docs[index]['messaggio'],
                        style: TextStyle(
                          fontFamily: 'MADE TOMMY',
                          fontSize: RicalcoloWidth(16.0, context),
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,)
                    ],
                  ),),



            );
          },
        );
      },
    );
  }
  int Ordina(String a, String b){
    if(int.parse(a)<int.parse(b)){
      return -1;
    }
    else{return 0;
    }
  }
}