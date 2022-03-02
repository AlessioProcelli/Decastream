


import 'package:everstream/GraphicsInterface.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Metodi/Ridimensiona.dart';
import 'Widget/Menu.dart';

class IconChange extends StatelessWidget {
  Menu menu;
  String assetNormal;
  String assetActive;
  bool isActive;
  BuildContext context;

  IconChange(Menu menu, String normal, String active,[bool cecked=false]) {
    this.menu = menu;
    assetActive = active;
    assetNormal = normal;
    this.isActive = cecked;
  }

  @override
  Widget build(BuildContext context) {
    this.context=context;
    return  AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: isActive
                  ? AssetImage(assetActive)
                  : AssetImage(assetNormal),
              fit: BoxFit.fill,
            ),
          ),
          child: TextButton(
            onPressed: () => change(),
          ),
        ),
    );
  }

bool isCeck(){
    return this.isActive;
}
bool setCeck(bool ceck){
    isActive=ceck;
    rebuildAllChildren(context);
}
change(){
    isActive=!isActive;
    rebuildAllChildren(context);
    menu.changeActive(this);

}
}
