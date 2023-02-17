import 'package:flutter/material.dart';

import '../../../../components/colors/list_Colors.dart';

Widget text_onboarding(
    {textNormal = String, textBold = String, fontSize = double}) {
  return Column(
    children: [
      Text(
        textNormal,
        style: TextStyle(
            color: ColorList.colors['white'],
            fontSize: fontSize,
            fontFamily: "OpenSans"),
      ),
      Text(
        textBold,
        style: TextStyle(
            color: ColorList.colors['white'],
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            fontFamily: "OpenSans"),
      )
    ],
  );
}
