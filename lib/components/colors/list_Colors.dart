import 'package:flutter/material.dart';

class ColorList {
  static const Map<String, Color> colors = {
    'primary': Color.fromRGBO(28, 28, 30, 1),
    'secondary': Color.fromRGBO(208, 253, 62, 1),
    'tertiary': Color.fromRGBO(58, 58, 60, 1),
    'quaternary': Color.fromRGBO(44, 44, 46, 1),
    'quinary': Color.fromRGBO(80, 80, 80, 1),
    'white': Colors.white,
    'black': Color.fromRGBO(0, 0, 0, 1),
  };

  Set<Color> listColor = {
    const Color(0xFFF5F5F3),
    Colors.blue,
    Colors.red,
  };
}
