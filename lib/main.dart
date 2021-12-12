
import 'dart:async';
import 'package:everstream/Controller.dart';
import 'package:everstream/Pagine/Main_Page.dart';
import 'package:flutter/material.dart';
import 'Database.dart';
import 'Pagine/Pagine_Accesso/Accedi.dart';


Database _database;
Controller controller;

Future<void> main()  async {

_database= new Database();
controller=new Controller(_database);

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

