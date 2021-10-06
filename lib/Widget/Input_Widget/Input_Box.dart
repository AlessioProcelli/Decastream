
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/Ridimensiona.dart';

class Input_Box extends StatelessWidget{
  double width;
  double height;
  double border_radius=10.0;
  TextEditingController controller;
  bool active=false;
  bool ispassword;


  Input_Box( double width,double height, String default_text, [bool ispassword=false]){
    this.width=width;
    this.height=height;
    controller = TextEditingController(text: default_text);
    this.ispassword=ispassword;
  }

  Widget build(BuildContext context) {
    return Container(
      width: RicalcoloWidth(width ,context),
      height: RicalcoloHeight(height, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border_radius),
        color: const Color(0xffe00a17),
      ),

      child: Container(
        margin: EdgeInsets.only(left: RicalcoloWidth(3.0, context),
            top: RicalcoloHeight(3.0, context)),
        child: Container(
          width: RicalcoloWidth(width, context),
          height: RicalcoloHeight(height, context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border_radius),
            color: const Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                color: const Color(0x43000000),
                offset: Offset(0, RicalcoloHeight(3.0, context)),
                blurRadius: 6,
              ),
            ],
          ),


          child: Container(
            margin: EdgeInsets.only(left: RicalcoloWidth(14.0, context),
                top: RicalcoloHeight(4.0, context)),
            child: TextFormField(
              obscureText: ispassword,
              controller: controller,
              onTap: () {
                ClearText(controller);
                if (!active) {
                  active = true;
                  rebuildAllChildren(context);
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: RicalcoloWidth(15.0, context),
                color: active ? Color(0xff0e1116) : Color(
                    0x3a0e1116),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
  String getText(){
    return controller.text;
  }


}