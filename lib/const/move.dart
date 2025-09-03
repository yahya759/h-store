import 'package:flutter/material.dart';

extension Nav on BuildContext {
  topage(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }
}
