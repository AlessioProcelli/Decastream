
import 'dart:async';
import 'package:everstream/Controller.dart';
import 'package:everstream/Pagine/Main_Page.dart';
import 'package:everstream/Pagine/Pagine_Profilo_Utente/ProfiloUtente_Modifica.dart';
import 'package:flutter/material.dart';
import 'Database.dart';
import 'Pagine/Pagine_Accesso/Accedi.dart';



Controller controller;

Future<void> main()  async {
controller=Controller.getControlleristance();

/*runApp(MyLogo());*/

 runApp(MyApp());


}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
   build(BuildContext context)  {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Accedi(),

      routes: {

        '/mainPage': (context) => Main_Page(),

      },


    );
  }
}

