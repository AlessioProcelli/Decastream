import 'package:everstream/Ridimensiona.dart';
import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
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

      home: logo(),

    );
  }
}
class logo extends StatelessWidget {
  logo({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width:RicalcoloWidth(375.0, context) ,
            height: RicalcoloHeight(812.0, context),
            decoration: BoxDecoration(
              color: const Color(0xffe00a17),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(127.0, context),RicalcoloHeight(360.0, context)),
            child:
            // Adobe XD layer: 'logo_bianco-traccia…' (shape)
            Container(
              width:RicalcoloWidth(122.0, context) ,
              height:RicalcoloHeight(92.0, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/image/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
