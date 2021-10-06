import 'package:everstream/NostriWidgetss/Visualizzatore_Ricerca.dart';
import 'package:everstream/Widget_Grafici/Metodi_Grafici.dart';
import 'package:flutter/material.dart';
import 'package:everstream/Ridimensiona.dart';



class PaginaCerca extends StatelessWidget{

  //prova con widget GridView


  PaginaCerca({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context){
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            /// Input Cerca E Bottone Filtra
            Container(
              margin: EdgeInsets.only(
                  top: RicalcoloHeight(17.0, context),
                  right: RicalcoloWidth(25.0, context),
                  bottom: RicalcoloHeight(10.0, context),
                  left: RicalcoloWidth(25.0, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ///input Cerca
                  Material(
                    elevation: 5,
                    child: Container(
                      width: RicalcoloWidth(207.0, context),
                      height: RicalcoloHeight(30.0, context),
                      color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_outlined,
                            color: Color(0xffe00a17),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  ///Bottone Filtra
                  ElevatedButton(
                    onPressed: () {
                      print("ok");
                    },
                    style: My_Button_Style(Size(RicalcoloWidth(77, context),
                        RicalcoloHeight(30, context))),
                    child: Text(
                      'Filtra',
                      style: My_Text_Style(
                          RicalcoloWidth(16.0, context), Color(0xffffffff)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),

            /// Visualizzatore Di Ricerca
            Expanded(
              flex: 11,
              //griglia aziende
              child: Visualizzatore_Ricerca(),
            ),
          ],
        ),
      ),

    );

  }
}

const String _svg_8l61jc =
    '<svg viewBox="0.0 0.0 17.9 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.70223426818848 16.70621490478516 L 12.60594177246094 11.59252548217773 C 13.59310150146484 10.36899662017822 14.18747234344482 8.814273834228516 14.18747234344482 7.120960235595703 C 14.18747234344482 3.196343183517456 11.00498199462891 0.002990722889080644 7.093716621398926 0.002990722889080644 C 3.182451486587524 0.002990722889080644 -3.11071659098161e-07 3.196308135986328 -3.11071659098161e-07 7.120925426483154 C -3.11071659098161e-07 11.0455436706543 3.182487964630127 14.23889446258545 7.093753814697266 14.23889446258545 C 8.781305313110352 14.23889446258545 10.3307409286499 13.64249515533447 11.55010509490967 12.6519660949707 L 16.64639854431152 17.76565551757812 C 16.79200744628906 17.91176223754883 16.983154296875 17.98519897460938 17.1743335723877 17.98519897460938 C 17.36551666259766 17.98519897460938 17.55666351318359 17.9117603302002 17.7022705078125 17.76565551757812 C 17.99422264099121 17.47270584106445 17.99422264099121 16.9991626739502 17.70223426818848 16.70621490478516 Z M 7.093753814697266 12.74036598205566 C 4.005350112915039 12.74036598205566 1.493430852890015 10.21987152099609 1.493430852890015 7.120925426483154 C 1.493430852890015 4.021980762481689 4.005350112915039 1.501485109329224 7.093753814697266 1.501485109329224 C 10.18215751647949 1.501485109329224 12.69407558441162 4.021979331970215 12.69407558441162 7.120925426483154 C 12.69407558441162 10.21987152099609 10.18212032318115 12.74036598205566 7.093753814697266 12.74036598205566 Z" fill="#e00a17" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

const String _svg_2fwa5j =
    '<svg viewBox="190.0 248.0 169.0 182.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(190.0, 248.0)" d="M 20 0 L 149 0 C 160.0457000732422 0 169 9.363467216491699 169 20.91388893127441 L 169 161.0369415283203 C 169 172.5873718261719 160.0457000732422 181.9508361816406 149 181.9508361816406 L 20 181.9508361816406 C 8.954304695129395 181.9508361816406 0 172.5873718261719 0 161.0369415283203 L 0 20.91388893127441 C 0 9.363467216491699 8.954304695129395 0 20 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
