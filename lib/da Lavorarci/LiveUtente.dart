import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:everstream/Ridimensiona.dart';

class Live3 extends StatelessWidget {
  Live3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, RicalcoloHeight(754.0, context)),
            child:
                // Adobe XD layer: 'red' (shape)
                Container(
              width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(91.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: const Color(0xffe00a17),
              ),
            ),
          ),
          // Adobe XD layer: 'maxresdefault' (shape)
          Container(
            width: RicalcoloWidth(375.0, context),
            height: RicalcoloHeight(663.0, context),
            decoration: BoxDecoration(
              image: DecorationImage(
              image: const AssetImage("assets/image/ferry.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(28.0, context), RicalcoloHeight(683.0, context)),
            child:
                // Adobe XD layer: 'Mod. in coda' (group)
                SizedBox(
              width: RicalcoloWidth(158.0, context),
            height: RicalcoloHeight(33.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 158.0, 33.0),
                    size: Size(158.0, 33.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x6f000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.0, 9.0, 85.0, 14.0),
                    size: Size(158.0, 33.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Modalità in coda',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(12.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.0, 3.0, 33.0, 24.0),
                    size: Size(158.0, 33.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'on-off' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 9.0, 33.0, 15.0),
                          size: Size(33.0, 24.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xffffffff),
                              border: Border.all(
                                  width: RicalcoloWidth(0.5, context) ,
                                  color: const Color(0xffe00a17)),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.6, 10.7, 10.2, 10.2),
                          size: Size(33.0, 24.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffe00a17),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.0, 0.0, 6.0, 6.0),
                          size: Size(33.0, 24.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'On',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(5.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(25.0, 0.0, 7.0, 6.0),
                          size: Size(33.0, 24.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Off',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: RicalcoloWidth(5.0, context),
                              color: const Color(0xff0e1116),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(278.0, context), RicalcoloHeight(17.0, context)),
            child:
                // Adobe XD layer: 'Persone' (group)
                SizedBox(
              width: RicalcoloWidth(82.0, context),
            height: RicalcoloHeight(41.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 82.0, 41.0),
                    size: Size(82.0, 41.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.0),
                        color: const Color(0x550e1116),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 10.0, 40.0, 21.0),
                    size: Size(82.0, 41.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '1732',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(18.0, context),
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 12.0, 21.0, 18.0),
                    size: Size(82.0, 41.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'group@1x' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                                            image: const AssetImage("assets/image/group.png"),

                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(162.0, context), RicalcoloHeight(731.0, context)),
            child:
                // Adobe XD layer: 'Termina' (group)
                SizedBox(
              width: RicalcoloWidth(51.0, context),
            height: RicalcoloHeight(46.0, context),
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 51.0, 46.0),
                    size: Size(51.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x41000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 22.5, 12.7, 12.7),
                    size: Size(51.0, 46.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_i3erlt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 22.5, 12.7, 12.7),
                    size: Size(51.0, 46.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_t9b1dt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.0, 7.0, 34.0, 10.0),
                    size: Size(51.0, 46.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'TERMINA',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: RicalcoloWidth(8.0, context),
                        color: const Color(0xff0e1116),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(15.0, context), RicalcoloHeight(617.0, context)),
            child: Container(
              width: RicalcoloWidth(48.0, context),
            height: RicalcoloHeight(37.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(223.0, context), RicalcoloHeight(636.0, context)),
            child: Container(
              width: RicalcoloWidth(122.0, context),
            height: RicalcoloHeight(68.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffe00a17),
                border: Border.all(width: RicalcoloWidth(0.7, context), color: const Color(0xffe00a17)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x55000000),
                            offset: Offset(0.0,  RicalcoloHeight(3.0, context)),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(236.0, context), RicalcoloHeight(642.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(96.0, context),
              child: Text(
                'LANCIA\nOFFERTA',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(20.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(27.0, context), RicalcoloHeight(624.0, context)),
            child: SvgPicture.string(
              _svg_dgk63h,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(12.0, context), RicalcoloHeight(20.0, context)),
            child: Container(
              width: RicalcoloWidth(130.0, context),
            height: RicalcoloHeight(83.0, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0x730e1116),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(16.3, context), RicalcoloHeight(27.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(81.0, context),
              child: Text(
                'Leone Lucia',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
fontSize: RicalcoloWidth(14.0, context),                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(RicalcoloWidth(16.0, context), RicalcoloHeight(51.0, context)),
            child: SizedBox(
              width: RicalcoloWidth(88.0, context),
              child: Text(
                'Vittoria Lucia',
                style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: RicalcoloWidth(14.0, context),
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_i3erlt =
    '<svg viewBox="181.5 753.5 12.7 12.7" ><path transform="translate(181.5, 753.5)" d="M 0 0 L 12.663818359375 12.663818359375" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_t9b1dt =
    '<svg viewBox="181.5 753.5 12.7 12.7" ><path transform="translate(181.5, 753.5)" d="M 12.663818359375 0 L 0 12.663818359375" fill="none" stroke="#e00a17" stroke-width="2.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_dgk63h =
    '<svg viewBox="27.0 624.0 24.4 22.0" ><path transform="translate(27.0, 624.0)" d="M 16.71974563598633 12.05155467987061 L 14.29037952423096 12.05155467987061 C 13.7641658782959 12.05155467987061 13.33768749237061 11.625075340271 13.33768749237061 11.09886169433594 C 13.33768749237061 10.57264804840088 13.7641658782959 10.14616966247559 14.29037952423096 10.14616966247559 L 15.4027214050293 10.14616966247559 C 14.68429565429688 8.948606491088867 13.38736915588379 8.193151473999023 11.93432807922363 8.193151473999023 C 10.44723510742188 8.193151473999023 9.082392692565918 9.006102561950684 8.372525215148926 10.31475162506104 C 8.121513366699219 10.77714252471924 7.54319953918457 10.94870090484619 7.080809116363525 10.69768905639648 C 6.618232250213623 10.44686317443848 6.446859359741211 9.868549346923828 6.697685241699219 9.406158447265625 C 7.741180896759033 7.482725620269775 9.747788429260254 6.287766933441162 11.93414115905762 6.287766933441162 C 13.23627853393555 6.287766933441162 14.47328853607178 6.70047664642334 15.51120281219482 7.481609344482422 C 15.9715461730957 7.827890396118164 16.37829971313477 8.242088317871094 16.71974563598633 8.703734397888184 L 16.71974563598633 7.764439582824707 C 16.71974563598633 7.238226413726807 17.1462230682373 6.811747550964355 17.67243766784668 6.811747550964355 C 18.19865036010742 6.811747550964355 18.62512969970703 7.238226413726807 18.62512969970703 7.764439582824707 L 18.62512969970703 10.14616966247559 C 18.62512969970703 11.19673633575439 17.77031135559082 12.05155467987061 16.71974563598633 12.05155467987061 Z M 23.43622398376465 14.38564968109131 C 23.96243667602539 14.38564968109131 24.38891410827637 13.9591703414917 24.38891410827637 13.43295764923096 L 24.38891410827637 7.240458965301514 C 24.38891410827637 5.139140605926514 22.67946624755859 3.429691314697266 20.57814598083496 3.429691314697266 L 19.13199043273926 3.429691314697266 C 18.72393226623535 3.429691314697266 18.36146354675293 3.170119762420654 18.22990989685059 2.784018993377686 L 17.94168281555176 1.937016367912292 C 17.54739570617676 0.7785279750823975 16.46017265319824 0 15.23618793487549 0 L 9.149936676025391 0 C 7.949582099914551 0 6.86924409866333 0.758432149887085 6.461744785308838 1.887335062026978 L 6.131837844848633 2.80057954788208 C 5.996005058288574 3.176818370819092 5.6359543800354 3.429691314697266 5.235712051391602 3.429691314697266 L 3.810767889022827 3.429691314697266 C 1.709449410438538 3.429691314697266 0 5.139140605926514 0 7.240458965301514 L 0 18.1964168548584 C 0 20.2977352142334 1.709449410438538 22.00718307495117 3.810767889022827 22.00718307495117 L 20.57814598083496 22.00718307495117 C 22.67946624755859 22.00718307495117 24.38891410827637 20.2977352142334 24.38891410827637 18.1964168548584 C 24.38891410827637 17.67020416259766 23.96243667602539 17.24372482299805 23.43622398376465 17.24372482299805 C 22.91001129150391 17.24372482299805 22.48353004455566 17.67020416259766 22.48353004455566 18.1964168548584 C 22.48353004455566 19.24698257446289 21.62871360778809 20.1018009185791 20.57814598083496 20.1018009185791 L 3.810767889022827 20.1018009185791 C 2.760201930999756 20.1018009185791 1.905383944511414 19.24698257446289 1.905383944511414 18.1964168548584 L 1.905383944511414 7.240458965301514 C 1.905383944511414 6.189893245697021 2.760201930999756 5.335074901580811 3.810767889022827 5.335074901580811 L 5.235712051391602 5.335074901580811 C 6.4360671043396 5.335074901580811 7.516404628753662 4.576642990112305 7.923903942108154 3.447740077972412 L 8.253810882568359 2.53449559211731 C 8.389643669128418 2.158256769180298 8.74969482421875 1.905383944511414 9.149936676025391 1.905383944511414 L 15.23618793487549 1.905383944511414 C 15.64405822753906 1.905383944511414 16.00652885437012 2.164769411087036 16.13808250427246 2.551056146621704 L 16.42630767822266 3.398058652877808 C 16.82078170776367 4.556547164916992 17.90800476074219 5.335074901580811 19.13199043273926 5.335074901580811 L 20.57814598083496 5.335074901580811 C 21.62871360778809 5.335074901580811 22.48353004455566 6.189893245697021 22.48353004455566 7.240458965301514 L 22.48353004455566 13.43295764923096 C 22.48353004455566 13.9591703414917 22.91001129150391 14.38564968109131 23.43622398376465 14.38564968109131 Z M 10.90832328796387 13.57586097717285 C 10.90832328796387 13.04964733123779 10.48184490203857 12.6231689453125 9.955631256103516 12.6231689453125 L 7.526267051696777 12.6231689453125 C 6.475700378417969 12.6231689453125 5.620882511138916 13.47798633575439 5.620882511138916 14.5285530090332 L 5.620882511138916 16.91028213500977 C 5.620882511138916 17.43649673461914 6.047361373901367 17.86297416687012 6.573575019836426 17.86297416687012 C 7.099788188934326 17.86297416687012 7.526267051696777 17.43649673461914 7.526267051696777 16.91028213500977 L 7.526267051696777 15.95907974243164 C 7.869570732116699 16.42556381225586 8.279302597045898 16.8438549041748 8.74355411529541 17.19311332702637 C 9.78165340423584 17.97424697875977 11.01847839355469 18.38695526123047 12.32042789459229 18.38695526123047 C 14.50696849822998 18.38695526123047 16.51357650756836 17.19199752807617 17.55707168579102 15.26875019073486 C 17.80808258056641 14.80617237091064 17.63652420043945 14.227858543396 17.17394828796387 13.9770336151123 C 16.71155738830566 13.7260217666626 16.13324356079102 13.89758014678955 15.88241767883301 14.36015796661377 C 15.17236423492432 15.66862010955811 13.80752182006836 16.48157119750977 12.32042789459229 16.48157119750977 C 10.86738681793213 16.48157119750977 9.570461273193359 15.72611618041992 8.852034568786621 14.5285530090332 L 9.955631256103516 14.5285530090332 C 10.48184490203857 14.5285530090332 10.90832328796387 14.10207366943359 10.90832328796387 13.57586097717285 Z M 10.90832328796387 13.57586097717285" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
