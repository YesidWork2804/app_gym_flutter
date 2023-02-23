import 'package:flutter/material.dart';

import '../../components/colors/list_Colors.dart';

Widget buttonRecoil(
    {icon = Icons,
    fuctionButton,
    color = ColorList,
    width = double,
    height = double,
    iconColor = ColorList}) {
  return GestureDetector(
    onTap: fuctionButton,
    child: (Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Icon(icon, color: iconColor),
      ),
    )),
  );
}
