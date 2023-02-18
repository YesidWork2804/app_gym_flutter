import 'package:flutter/cupertino.dart';

Widget imageOnboarding({
  image = String,
  // width = double,
  // height = double,
}) {
  return Image(
    image: AssetImage(image),
    // width: width,
    // height: height,
  );
}
