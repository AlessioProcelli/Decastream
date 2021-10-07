
import 'dart:async';
import 'package:everstream/Controller.dart';
import 'package:flutter/material.dart';
import 'Pagine/Pagine_Accesso/Accedi.dart';

Future<void> init() async {
  controller.getUtenti();
}

Controller controller;
Timer timer;

Future<void> main()  async {
controller=new Controller();
/*const oneSec = const Duration(seconds:1);
new Timer.periodic(oneSec, (Timer t) => print('hi!'));*/
/*runApp(MyLogo());
  await Future.delayed(Duration(seconds: 3));*/
 // timer = Timer.periodic(Duration(seconds: 5), (Timer t) => Ascolta());
 runApp(MyApp());
 /* runApp(ProvaMyApp());*/

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

    );
  }
}

