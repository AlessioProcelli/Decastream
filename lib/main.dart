

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:everstream/Controller.dart';
import 'package:everstream/Database.dart';
import 'package:everstream/da%20Lavorarci/Event01.dart';
import 'package:everstream/da%20Lavorarci/Event02.dart';
import 'package:everstream/da%20Lavorarci/Lancioofferta.dart';
import 'package:everstream/Live.dart';
import 'package:everstream/Registrati.dart';
import 'package:everstream/da%20Lavorarci/callSpettatore.dart';
import 'package:everstream/logo.dart';
import 'package:everstream/mainnn.dart';
import 'package:everstream/pages/call.dart';
import 'package:everstream/prova.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Accedi.dart';
//import 'package:agora_rtc_engine/agora_rtc_engine_web.dart';
//import 'package:agora_rtc_engine/rtc_channel.dart';
//import 'package:agora_rtc_engine/rtc_engine.dart';
//import 'package:agora_rtc_engine/rtc_local_view.dart';
//import 'package:agora_rtc_engine/rtc_remote_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'da Lavorarci/Cerca.dart';

//import 'package:everstream/NostriWidgetss/Menu.dart';





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
Ascolta() async{


      // access a particular field as you would any JS property
    
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
   build(BuildContext context)  {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      home:Accedi(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(child:
        Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('yep!'),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => CallPage(channelName:"mio",));
                Navigator.push(context, route);
              },
            ),
            RaisedButton(
              child: Text('init'),
              onPressed: () {
                init();
              },
            ),
            RaisedButton(
              child: Text('init'),

            ),

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
        ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
