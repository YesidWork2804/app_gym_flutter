import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/material.dart';

Widget customButtonWidgets(
    {width = double,
    height = double,
    textButton = String,
    iconButton = Icons,
    onPressed}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorList.colors['secondary'],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textButton,
            style: TextStyle(
                fontFamily: "OpenSans",
                color: ColorList.colors['black'],
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          Icon(
            iconButton,
            color: ColorList.colors['black'],
          )
        ],
      ),
    ),
  );
}
