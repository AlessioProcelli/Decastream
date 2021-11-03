


import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Metodi/Ridimensiona.dart';

class Input_Hashtag extends StatelessWidget {
  File imagenew=null;
  String currentImage;
  bool changedHashtag=false;
  bool enableModify=false;
  TextEditingController controllerBox;

  Input_Hashtag(currentUrlImage,text) {
    currentImage = currentUrlImage;
    controllerBox=TextEditingController(text:"#"+text);
  }


  Widget build(BuildContext context) {
    return Container(


      child: Column(
        children: <Widget>[
          Container(
            width: RicalcoloWidth(55.0, context),
            height: RicalcoloWidth(55.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              image: DecorationImage(
                image: changedHashtag ? FileImage(imagenew)
                    : NetworkImage(currentImage),
                fit: BoxFit.cover,
              ),
            ),
            child: enableModify
                ? TextButton( //attivo la possibilità di cliccare solo quando si modifica
              onPressed: () {
                ChangeFoto(context);
              },
            )
                : Container(), //altrimenti ci lascio un conteiner segnaposto
          ),

          Container(
            width: RicalcoloWidth(54, context),
            height: RicalcoloWidth(14, context),
            padding: EdgeInsets.all(RicalcoloWidth(2, context)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],

            ),

            child:
            TextFormField(
              enabled: enableModify,
              controller: controllerBox,
              onTap: () {
                ClearText(controllerBox);
                controllerBox.text = "#";
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(7.0, context),
                color: const Color(0xff0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
  Future<bool> ChangeFoto(BuildContext context) async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    imagenew=File(pickedFile.path);
    changedHashtag=true;
    rebuildAllChildren(context);
  }

  String getText(){
    return controllerBox.text.substring(1);
  }

  File getNewPhoto(){
    return imagenew;
  }

  void setModify(bool b){
    enableModify=b;
  }
}
