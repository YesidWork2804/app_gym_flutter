import 'package:flutter/cupertino.dart';

Widget image_onboarding({
  image = String,
  width = double,
  height = double,
}) {
  return Image(
    // 'assets/images/onboarding_1.png'
    image: AssetImage(image),
    width: width,
    height: height,
  );
}
