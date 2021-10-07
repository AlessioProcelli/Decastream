

import 'package:everstream/Tipi/Utente.dart';
import 'package:everstream/Widget/Input_Widget/Input_Row_Box.dart';
import 'package:everstream/Metodi/Metodi_Grafici.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import '../../main.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';
import 'ProfiloUtente.dart';

class Profiloutentemodifica extends StatelessWidget {
  Profiloutente profilo;
  Divider row_divider = Divider(color: Colors.black);
  Utente current_user = controller.database.currentUser;
  String url = controller.database.currentUser.foto_profilo;
  File NuovaFoto = null;
  bool changed = false;
  Input_Row_Box input_cognome;
  Input_Row_Box input_nome;
  Input_Row_Box input_username;
  Input_Row_Box input_numero;
  Input_Row_Box input_email;

  Profiloutentemodifica(Profiloutente profilo) {
    this.profilo = profilo;
    input_cognome = Input_Row_Box(current_user.cognome);
    input_nome = Input_Row_Box(current_user.nome);
    input_username = Input_Row_Box(current_user.username);
    input_numero = Input_Row_Box(current_user.cellulare);
    input_email = Input_Row_Box(current_user.email);
  }

  @override
  Widget build(BuildContext context) {
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
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: My_Button_Style(Size(
                              RicalcoloWidth(64.0, context),
                              RicalcoloHeight(21.0, context))),
                          child: Text(
                            'Annulla',
                            style: My_Text_Style(RicalcoloWidth(10.5, context),
                                Color(0xffffffff)),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        ///Fatto
                        ElevatedButton(
                          onPressed: () {
                            ChangeConfirmed(context);
                          },
                          style: My_Button_Style(Size(
                              RicalcoloWidth(64.0, context),
                              RicalcoloHeight(21.0, context))),
                          child: Text(
                            'Fatto',
                            style: My_Text_Style(RicalcoloWidth(10.5, context),
                                Color(0xffffffff)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///Foto
                  Container(
                    margin:
                        EdgeInsets.only(top: RicalcoloHeight(15.0, context)),
                    width: RicalcoloWidth(116.0, context),
                    height: RicalcoloHeight(116.0, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27.0),
                      image: DecorationImage(
                        image:
                            changed ? FileImage(NuovaFoto) : NetworkImage(url),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Change(context);
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

  Future<void> Change(BuildContext context) async {
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

  Future<void> ChangeConfirmed(BuildContext context) async {
    await controller.UpdateUser(
        input_nome.getText(),
        input_cognome.getText(),
        input_username.getText(),
        //per levare la chiocciola
        input_email.getText(),
        input_numero.getText(),
        NuovaFoto);
    profilo.ReplaceInfo();
    Navigator.pop(context);
  }
}

const String _svg_luz5b =
    '<svg viewBox="-1.5 247.5 377.0 137.0" ><path transform="translate(0.5, 290.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-1.5, 247.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.5, 337.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.5, 384.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="2" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a951mw =
    '<svg viewBox="156.5 644.5 7.0 7.0" ><path transform="translate(156.5, 644.5)" d="M 0 0 L 7 7" fill="none" stroke="#ffffff" stroke-width="1.600000023841858" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(156.5, 644.5)" d="M 7 0 L 0 7" fill="none" stroke="#ffffff" stroke-width="1.600000023841858" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
