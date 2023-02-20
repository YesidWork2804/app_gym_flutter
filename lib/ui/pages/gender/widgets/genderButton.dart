import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:app_gym_flutter/ui/widgets/textApp.dart';
import 'package:flutter/material.dart';

Widget genderButton(
    {text = String,
    icon,
    colorText = Color,
    colorButton = Color,
    iconColor = Color}) {
  return (Container(
    width: 140,
    height: 140,
    decoration: BoxDecoration(
        color: colorButton, borderRadius: BorderRadius.circular(90)),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 68,
          ),
          const Divider(height: 19),
          textApp(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              text: text,
              textColor: colorText)
        ],
      ),
    ),
  ));
}
