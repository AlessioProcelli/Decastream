
import 'package:everstream/Pagine_Accesso/Accedi.dart';
import 'package:everstream/ProfiloUtente.dart';
import 'package:everstream/da%20Lavorarci/callSpettatore.dart';
import 'package:everstream/pages/index.dart';
import 'package:path/path.dart' as Path;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:everstream/NostriWidgetss/Menu.dart';

class Profiloutentemodifica extends StatelessWidget {
  Profiloutente profilo;
  String url=controller.database.currentUser.foto_profilo;
  File NuovaFoto=null;
  bool changed=false;
  final controllerNumero=TextEditingController(text: controller.database.currentUser.cellulare);
  final controllerNome=TextEditingController(text: controller.database.currentUser.nome);
  final controllerCognome=TextEditingController(text: controller.database.currentUser.cognome);
  final controllerUsername=TextEditingController(text:"@"+ controller.database.currentUser.username);
  final controllerEmail=TextEditingController(text: controller.database.currentUser.email);
  Profiloutentemodifica(Profiloutente profilo) {
    this.profilo=profilo;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Scaffold(
        backgroundColor: const Color(0xffffffff),
    body:Stack(
        children: <Widget>[
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(812.0, context),
            decoration: BoxDecoration(
              color: const Color(0x0e000000),
            ),
          ),

          // Cambio Numero di telefono e Email

          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(46.0, context),top: RicalcoloHeight(469.0, context)),


            child:Column(
    children:<Widget>[


                //Numero di Telefono
            Row(
    children:<Widget>[
    Container(
    margin: EdgeInsets.only(top: RicalcoloHeight(7.0, context)),
     child: Text(
              'Cambia Numero',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
    ),
       Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(14.0, context)),
          width: RicalcoloWidth(125.0, context),
          height: RicalcoloHeight(32.0, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),
         child:Container(
    margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context),top: RicalcoloHeight(7.0, context)),
    child:TextFormField(
           controller:controllerNumero,
           onTap:(){
             ClearText(controllerNumero);
             },
           decoration: InputDecoration(
             border: InputBorder.none,
           ),
           style: TextStyle(
             fontFamily: 'MADE TOMMY',
             fontSize: RicalcoloWidth(13.0, context),
             color: const Color(0xff000000),
           ),
           textAlign: TextAlign.left,
         ),
        ),
       ),

            ],
            ),

      Padding(padding: EdgeInsets.only(top:RicalcoloHeight(20.0, context))),

      //Email
      Row(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(top: RicalcoloHeight(7.0, context)),
            child: Text(
              'Cambia Email',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(15.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(28.0, context)),
            width: RicalcoloWidth(125.0, context),
            height: RicalcoloHeight(32.0, context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                  blurRadius: 6,
                ),
              ],
            ),
            child:Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(7.0, context),top: RicalcoloHeight(7.0, context)),
              child:TextFormField(
                controller:controllerEmail,
                onTap:(){ClearText(controllerEmail);},
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(13.0, context),
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),

        ],
      ),



          ],),),

          //Foto E Cambio
          Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(130.0, context),top: RicalcoloHeight(55.0, context)),

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                // Adobe XD layer: 'fedez-biografia-202…' (shape)
                Container(
                  width: RicalcoloWidth(116.0, context),
                  height: RicalcoloHeight(116.0, context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27.0),
                    image: DecorationImage(
                      image: changed ?FileImage(NuovaFoto)
                          : NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                TextButton(
                  onPressed: (){
                    Change(context);
                  },
                  child: Text(
                    'Inserisci nuova foto',
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(10.0, context),
                      color: const Color(0xffe00a17),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
    ],
            ),),

         //Bottone Annulla
            Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(19.0, context),top: RicalcoloHeight(15.0, context)),
child:  TextButton(
                onPressed: (){
    Navigator.pop(context);
    },child:Container(
              width: RicalcoloWidth(54.0, context),
            height: RicalcoloHeight(21.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),

                  child:Container(
                    margin:  EdgeInsets.only(left:RicalcoloWidth(7.0, context),top:RicalcoloHeight(4.0, context)),
                    child:Text(
                    'Annulla',
                    style: TextStyle(
                      fontFamily: 'MADE TOMMY',
                      fontSize: RicalcoloWidth(10.0, context),
                      color: const Color(0xffe00a17),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            ),
//Bottone Fatto
          Container(
              margin: EdgeInsets.only(left: RicalcoloWidth(300.0, context),top: RicalcoloHeight(15.0, context)),
            child:TextButton(
                onPressed: (){
                  ChangeConfirmed(context);
                },

                child:Container(
                width: RicalcoloWidth(54.0, context),
            height: RicalcoloHeight(21.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),

    child: Container(
    margin:  EdgeInsets.only(left:RicalcoloWidth(12.0, context),top:RicalcoloHeight(4.0, context)),
      child:Text(
              'Fatto',
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(10.0, context),
                color: const Color(0xffe00a17),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          ),
            ),),
      //Specifiche

      Container(
        margin: EdgeInsets.only(top: RicalcoloHeight(247.0, context)),

        child:Column(

          children:<Widget>[

            Divider(color: Colors.black),
//Nome
            Container(
              margin: EdgeInsets.only(left:RicalcoloWidth(44.0, context)),
              child:  TextFormField(
                controller:controllerNome,
                onTap:(){ClearText(controllerNome);},
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontFamily: 'MADE TOMMY',
                  fontSize: RicalcoloWidth(19.0, context),
                  color: const Color(0xff0e1116),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            Divider(color: Colors.black),
        //Campo Cognome
        Container(
          margin: EdgeInsets.only(left:RicalcoloWidth(44.0, context)),
          child:TextFormField(
            controller:controllerCognome,
            onTap:(){ClearText(controllerCognome);},
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontFamily: 'MADE TOMMY',
              fontSize: RicalcoloWidth(19.0, context),
              color: const Color(0xff0e1116),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),),
            Divider(color: Colors.black),
          //Campo Email
          Container(
            margin: EdgeInsets.only(left:RicalcoloWidth(44.0, context)),
            child:TextFormField(
              controller:controllerUsername,
              onTap:(){
                ClearText(controllerUsername);
                controllerUsername.text="@";
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'MADE TOMMY',
                fontSize: RicalcoloWidth(19.0, context),
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),),
            Divider(color: Colors.black),
            ],),),








        ],
    ),),
    );
  }
  Future<void> Change(BuildContext context) async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      NuovaFoto = File(pickedFile.path);
      changed=true;
      rebuildAllChildren(context);
    }
  }

  Future<void> ChangeConfirmed(BuildContext context) async {

await controller.UpdateUser(controllerNome.text, controllerCognome.text, controllerUsername.text.substring(1),//per levare la chiocciola
    controllerEmail.text,controllerNumero.text, NuovaFoto);
profilo.ReplaceInfo( NuovaFoto);
Navigator.pop(context);


  }

}

const String _svg_luz5b =
    '<svg viewBox="-1.5 247.5 377.0 137.0" ><path transform="translate(0.5, 290.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-1.5, 247.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.5, 337.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.5, 384.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a951mw =
    '<svg viewBox="156.5 644.5 7.0 7.0" ><path transform="translate(156.5, 644.5)" d="M 0 0 L 7 7" fill="none" stroke="#ffffff" stroke-width="1.600000023841858" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(156.5, 644.5)" d="M 7 0 L 0 7" fill="none" stroke="#ffffff" stroke-width="1.600000023841858" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
