import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../components/colors/list_Colors.dart';

class ContainerPickerHeight extends StatefulWidget {
  const ContainerPickerHeight({Key? key}) : super(key: key);

  @override
  State<ContainerPickerHeight> createState() => CcontainerPickerHeightState();
}

class CcontainerPickerHeightState extends State<ContainerPickerHeight> {
  int currentIntValue = 160;
  @override
  Widget build(BuildContext context) {
    Color _textColor = Colors.black;
    return SizedBox(
      width: 156,
      height: 350,
      child: Stack(
        children: [
          Positioned(
            bottom: 60,
            right: 37,
            child: Text(
              'cm',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 240),
            child: const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromRGBO(208, 253, 62, 1),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 303),
            child: const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromRGBO(208, 253, 62, 1),
            ),
          ),
          Row(
            children: [
              NumberPicker(
                itemCount: 7,
                itemHeight: 78,
                textStyle:
                    TextStyle(color: ColorList.colors['quinary'], fontSize: 58),
                value: currentIntValue,
                minValue: 100,
                maxValue: 230,
                step: 1,
                haptics: true,
                onChanged: (value) {
                  setState(() {
                    currentIntValue = value;
                    _textColor = value % 2 == 0 ? Colors.red : Colors.black;
                  });
                },
                selectedTextStyle:
                    TextStyle(color: ColorList.colors['white'], fontSize: 50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
