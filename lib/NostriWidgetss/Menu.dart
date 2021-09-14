import 'package:everstream/da%20Lavorarci/Cerca.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Ridimensiona.dart';
import 'package:everstream/Accedi.dart';

import '../Navigator.dart';

//0xffffffff
//Colors.blue  const Color(0xffffffff)

class Menu extends StatelessWidget {
  Navigatore padre;
  bool cerca=false;
  bool acquisti=false;
  bool messaggi=false;
  bool profilo=true;
  double icon_dimension=40;
  Menu(Navigatore padre ,{Key key,}) : super(key: key)
{
  print("ok");
  this.padre=padre;

}
  @override
  Widget build(BuildContext context) {
    return
            Container(
              margin:  EdgeInsets.only(left:RicalcoloWidth(2.0, context),top:RicalcoloHeight(741.0, context)),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
          Container(
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloHeight(icon_dimension, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:cerca?AssetImage( 'assets/image/cercaRED.png')
                      :AssetImage( 'assets/image/cerca.png'),
                  fit: BoxFit.fill,                                                   ),
              ),
              child: TextButton(
                  onPressed: () =>{
                   setCurrentActive(1,context)
                  },
              ),
            ),


          Container(
          margin:  EdgeInsets.only(left:RicalcoloWidth(40.0, context)),
                width: RicalcoloWidth(icon_dimension, context),
                height: RicalcoloHeight(icon_dimension, context),
                decoration: BoxDecoration(
                  image: DecorationImage(
                     image:acquisti?AssetImage( 'assets/image/acquistiRED.png')
                         :AssetImage( 'assets/image/acquisti.png'),              
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


            // Adobe XD layer: 'messaggi@4x' (shape)
            Container(
              margin:  EdgeInsets.only(left:RicalcoloWidth(40.0, context)),
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloHeight(icon_dimension, context),
              decoration: BoxDecoration(
                image: DecorationImage(
                   image:messaggi?AssetImage( 'assets/image/messaggiRED.png')
                       :AssetImage( 'assets/image/messaggi.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {
                    // setCurrentActive(3,context)
                },
              ),
            ),


            Container(
              margin:  EdgeInsets.only(left:RicalcoloWidth(40.0, context)),
              width: RicalcoloWidth(icon_dimension, context),
              height: RicalcoloHeight(icon_dimension, context),
              decoration: BoxDecoration(
                image:  DecorationImage(
                   image:profilo?AssetImage( 'assets/image/profiloRED.png')
                       :AssetImage( 'assets/image/profilo.png'),        
                  fit: BoxFit.fill,
                ),
              ),
              child: TextButton(
                onPressed: () => {
                     setCurrentActive(4,context)
                },
              ),
            ),

        ],
      ),
    );
  }
 void setCurrentActive(int i, BuildContext context) {
    print("okkey");
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
 int getCurrentActive (){
      if(cerca)
        return 1;
      if(acquisti)
        return 2;
      if(messaggi)
        return 3;
      if(profilo)
        return 4;
 }
}
