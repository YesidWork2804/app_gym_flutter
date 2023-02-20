import 'package:flutter/material.dart';

import '../../components/colors/list_Colors.dart';

Widget textApp(
    {text = String,
    fontSize = double,
    fontWeight = FontWeight,
    textColor = ColorList}) {
  return Column(
    children: [
      Text(
        text,
        style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontFamily: "OpenSans",
            fontWeight: fontWeight),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
