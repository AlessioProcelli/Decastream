import 'package:everstream/Pagine/Main_Page.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Metodi/Ridimensiona.dart';

class Menu extends StatelessWidget {
  Main_Page padre;
  bool cerca = false;
  bool acquisti = false;
  bool messaggi = false;
  bool profilo = true;
  static const double icon_dimension = 40;

  Menu(
    Main_Page padre, {
    Key key,
  }) : super(key: key) {
    this.padre = padre;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: cerca
                      ? AssetImage('assets/image/cercaRED.png')
                      : AssetImage('assets/image/cerca.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {setCurrentActive(1, context)},
              ),
            ),
          ),
        ),

        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloWidth(icon_dimension, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: acquisti
                      ? AssetImage('assets/image/acquistiRED.png')
                      : AssetImage('assets/image/acquisti.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {
                  //Cerca
                  //setCurrentActive(2,context)
                },
              ),
            ),
          ),
        ),

        // Adobe XD layer: 'messaggi@4x' (shape)
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloWidth(icon_dimension, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: messaggi
                      ? AssetImage('assets/image/messaggiRED.png')
                      : AssetImage('assets/image/messaggi.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {
                  // setCurrentActive(3,context)
                },
              ),
            ),
          ),
        ),
        Container(
          width: RicalcoloWidth(icon_dimension, context),
          height: RicalcoloHeight(icon_dimension, context),
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloWidth(icon_dimension, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: profilo
                      ? AssetImage('assets/image/profiloRED.png')
                      : AssetImage('assets/image/profilo.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {setCurrentActive(4, context)},
              ),
            ),
          ),
        ),
      ],
    );
  }

  void setCurrentActive(int i, BuildContext context) {
    cerca = false;
    acquisti = false;
    messaggi = false;
    profilo = false;
    switch (i) {
      case 1:
        cerca = true;
        break;
      case 2:
        acquisti = true;
        break;
      case 3:
        messaggi = true;
        break;
      case 4:
        profilo = true;
        break;
    }
    padre.Change();
    rebuildAllChildren(context);
  }

  int getCurrentActive() {
    if (cerca) return 1;
    if (acquisti) return 2;
    if (messaggi) return 3;
    if (profilo) return 4;
  }
}
