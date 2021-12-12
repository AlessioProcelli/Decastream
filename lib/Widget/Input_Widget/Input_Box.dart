import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Metodi/Ridimensiona.dart';

class Input_Box extends StatelessWidget {
  double _width;
  double _height;
  double _border_radius = 10.0;
  TextEditingController _controller;
  bool _active = false;
  bool _ispassword;

  Input_Box(double _width, double _height, String default_text,
      [bool _ispassword = false]) {
    this._width = _width;
    this._height = _height;
    _controller = TextEditingController(text: default_text);
    this._ispassword = _ispassword;
  }

  Widget build(BuildContext context) {
    return Container(
      width: RicalcoloWidth(_width, context),
      height: RicalcoloHeight(_height, context),
      child: AspectRatio(
        aspectRatio: 13 / 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_border_radius),
            color: const Color(0xffe00a17),
          ),
          child: Container(
            margin: EdgeInsets.only(
                left: RicalcoloWidth(3.0, context),
                top: RicalcoloHeight(3.0, context)),
            child: Container(
              width: RicalcoloWidth(_width, context),
              height: RicalcoloHeight(_height, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_border_radius),
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
                margin: EdgeInsets.only(
                    left: RicalcoloWidth(14.0, context),
                    top: RicalcoloHeight(4.0, context)),
                child: TextFormField(
                  obscureText: _ispassword,
                  controller: _controller,
                  onTap: () {
                    ClearText(_controller);
                    if (!_active) {
                      _active = true;
                      rebuildAllChildren(context);
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: RicalcoloWidth(15.0, context),
                    color: _active ? Color(0xff0e1116) : Color(0x3a0e1116),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String getText() {
    return _controller.text;
  }
}
