import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../../../components/colors/list_Colors.dart';

class ContainerPickerNumber extends StatefulWidget {
  const ContainerPickerNumber({Key? key}) : super(key: key);

  @override
  State<ContainerPickerNumber> createState() => _ContainerPickerNumber();
}

class _ContainerPickerNumber extends State<ContainerPickerNumber> {
  int currentIntValue = 1;
  @override
  Widget build(BuildContext context) {
    Color _textColor = Colors.black;
    return SizedBox(
      width: 113,
      height: 350,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 150),
            child: const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromRGBO(208, 253, 62, 1),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 203),
            child: const Divider(
              height: 2,
              thickness: 2,
              color: Color.fromRGBO(208, 253, 62, 1),
            ),
          ),
          NumberPicker(
            itemCount: 7,
            // itemHeight: 78,
            textStyle:
                TextStyle(color: ColorList.colors['quinary'], fontSize: 49),
            value: currentIntValue,
            minValue: 0,
            maxValue: 100,
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
    );
  }
}
