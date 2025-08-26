import 'package:flutter/material.dart';

extension nav on BuildContext {
  topage(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }
}
