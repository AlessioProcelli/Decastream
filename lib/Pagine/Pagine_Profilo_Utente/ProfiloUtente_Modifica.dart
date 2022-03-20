import 'package:everstream/GraphicsInterface.dart';
import 'package:everstream/Pagine/Pagine_Profilo_Utente/ControllerUtente.dart';
import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/Widget/ButtonPrimary.dart';
import 'package:everstream/Widget/Input_Widget/Input_Row_Box.dart';
import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import '../../GraphicsObject.dart';
import '../../main.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'ProfiloUtente.dart';

class Profiloutentemodifica extends StatelessWidget implements GraphicsInterface{
  ControllerUtente controller;
  Profiloutente profilo;
  BuildContext context;
  Divider row_divider = Divider(color: Colors.black);
  Utente currentUser;
  File NuovaFoto = null;
  bool changed = false;
  ButtonPrimary fatto;
  ButtonPrimary annulla;
  Input_Row_Box input_cognome;
  Input_Row_Box input_nome;
  Input_Row_Box input_username;
  Input_Row_Box input_numero;
  Input_Row_Box input_email;

  Profiloutentemodifica(Profiloutente profilo) {
    controller=new ControllerUtente();
    currentUser=controller.getActiveUser();
    this.profilo = profilo;
    input_cognome = Input_Row_Box(currentUser.cognome);
    input_nome = Input_Row_Box(currentUser.nome);
    input_username = Input_Row_Box(currentUser.username);
    input_numero = Input_Row_Box(currentUser.cellulare);
    input_email = Input_Row_Box(currentUser.email);
    fatto=new ButtonPrimary("Conferma");
    fatto.addObserver(this);
    annulla=new ButtonPrimary("Annulla");
    annulla.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    this.context=context;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                width: RicalcoloWidth(375.0, context),
                height: RicalcoloHeight(812.0, context),
                decoration: BoxDecoration(
                  color: const Color(0x0e000000),
                ),
                child: Column(children: <Widget>[

                  ///Bottoni  Annulla e Fatto
                  Container(
                    margin: EdgeInsets.only(
                        left: RicalcoloWidth(12.0, context),
                        right: RicalcoloWidth(12.0, context),
                        top: RicalcoloHeight(15.0, context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        ///Annulla
                        Container(
                          width: RicalcoloWidth(64.0, context),
                          height: RicalcoloHeight(31.0, context),
                          child: AspectRatio(
                            aspectRatio: 2 / 1,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: Primary_Button_Style(),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Text(
                                  'Annulla',
                                  style: My_Text_Style(
                                      RicalcoloWidth(10.5, context),
                                      Color(0xffffffff)),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                        ),

                        ///Fatto
                        Container(
                          width: RicalcoloWidth(64.0, context),
                          height: RicalcoloHeight(31.0, context),
                          child:fatto
                        )
                      ],
                    ),
                  ),


                  ///Foto
                  Container(
                    margin:
                    EdgeInsets.only(top: RicalcoloHeight(15.0, context)),
                    width: RicalcoloWidth(116.0, context),
                    height: RicalcoloHeight(116.0, context),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(27.0),
                          image: DecorationImage(
                            image:
                            changed ? FileImage(NuovaFoto) : NetworkImage(currentUser.foto_profilo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      change(context);
                    },
                    child: Text(
                      'Inserisci nuova foto',
                      style: My_Text_Style(
                          RicalcoloWidth(11.0, context), Color(0xffe00a17)),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  Padding(
                      padding:
                      EdgeInsets.only(top: RicalcoloHeight(25.0, context))),

                  /// Nome
                  row_divider,

                  input_nome,
                  row_divider,

                  /// Cognome

                  input_cognome,

                  row_divider,

                  ///Username
                  input_username,
                  row_divider,

                  ///Cellulare
                  input_numero,
                  row_divider,

                  ///Email
                  input_email,
                  row_divider,
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> change(BuildContext context) async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      NuovaFoto = File(pickedFile.path);
      changed = true;
      rebuildAllChildren(context);
    }
  }

  Future<void> changeConfirmed() async {
    await controller.updateUser(
        input_nome.getText(),
        input_cognome.getText(),
        input_username.getText(),
        //per levare la chiocciola
        input_email.getText(),
        input_numero.getText(),
        NuovaFoto);
    profilo.replaceInfo();
    Navigator.pop(context);
  }

  @override
  update(GraphicsObject obj) {
    if(obj==fatto) {
      changeConfirmed();

    }
    else {
      Navigator.pop(context);
    }

  }
}

