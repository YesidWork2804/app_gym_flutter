import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import '../../../../components/colors/list_Colors.dart';

class MyVerticalWeightSlider extends StatefulWidget {
  const MyVerticalWeightSlider({Key? key}) : super(key: key);

  @override
  State<MyVerticalWeightSlider> createState() => _MyVerticalWeightSliderState();
}

class _MyVerticalWeightSliderState extends State<MyVerticalWeightSlider> {
  late WeightSliderController _controller;
  double _weight = 30.0;

  @override
  void initState() {
    super.initState();
    _controller = WeightSliderController(
        initialWeight: _weight, minWeight: 0, interval: 0.1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90.0,
          alignment: Alignment.center,
          child: Text(
            "${_weight.toStringAsFixed(1)} kg",
            style: TextStyle(
                fontSize: 64.0,
                fontWeight: FontWeight.bold,
                fontFamily: "OpenSans",
                color: ColorList.colors['white']),
          ),
        ),
        const Divider(height: 42),
        VerticalWeightSlider(
          indicator: Container(
            width: 92,
            height: 3,
            color: Colors.white,
          ),
          height: 49,
          controller: _controller,
          isVertical: false,
          decoration: const PointerDecoration(
            width: 90.0,
            height: 3.0,
            largeColor: Color.fromRGBO(208, 253, 62, 1),
            mediumColor: Color.fromRGBO(208, 253, 62, 1),
            smallColor: Color.fromRGBO(208, 253, 62, 1),
          ),
          onChanged: (double value) {
            setState(() {
              _weight = value;
            });
          },
          // indicator: Container(
          //   height: 3.0,
          //   width: 92.0,
          //   alignment: Alignment.centerLeft,
          //   color: Color.fromRGBO(208, 253, 62, 1),
          // ),
        ),
      ],
    );
  }
}
