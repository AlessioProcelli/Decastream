import 'dart:async';


import 'dart:async';
import 'dart:io' as io;

import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:everstream/NostriWidgetss/ChatLista.dart';
import 'package:everstream/pages/call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/material.dart';// For Image Picker
import 'package:path/path.dart' as Path;
import 'Ridimensiona.dart';
import 'main.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class prova extends StatelessWidget {
  final List<String> messagelist=[];
  BuildContext context;
  final picker = ImagePicker();
  bool ready=false;
 prova(){
   const oneSec = const Duration(seconds:1);
   new Timer.periodic(oneSec, (Timer t) => Ascolta());
 }

  Widget build(BuildContext context) {
    this.context=context;
    ready=true;
  return SafeArea(child:
  Scaffold(

  body: Center(


  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[


    ElevatedButton(child: Text("Pick Image"), onPressed: Prova()),
   /* Container(
      height: 400,
      //child: myListViewWithCustomIconAndCard(context,"yuo",messagelist),
      child:new UserInformation("aleP")
    ),*/
  ],),),),);

}
  Ascolta() async {
    if (ready) {
      bool newMess = await controller.getChat("aleP", messagelist);
      if(newMess) {
        rebuildAllChildren(context);
      }
    }
  }

  Prova() {

    //const oneSec = const Duration(seconds:5);
    //new Timer.periodic(oneSec, (Timer t) => ;}
  }
  Future chooseFile() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      String fileName = Path.basename(imageFile.path);
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference ref = storage.ref().child("image1");
      UploadTask uploadTask = ref.putFile(imageFile);
      uploadTask.then((res) {
        res.ref.getDownloadURL();
      });
    }
    }
  }




