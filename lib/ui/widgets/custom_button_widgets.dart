import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget custom_button_widgets() {
  return Container(
    width: 185,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorList.colors['secondary'],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Star Now',
            style: TextStyle(
                fontFamily: "OpenSans",
                color: ColorList.colors['black'],
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          Icon(
            Icons.arrow_right,
            color: ColorList.colors['black'],
          )
        ],
      ),
    ),
  );
}
