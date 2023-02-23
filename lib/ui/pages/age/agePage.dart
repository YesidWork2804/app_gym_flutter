import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:app_gym_flutter/ui/widgets/textApp.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../widgets/buttonRecoil.dart';
import '../../widgets/customButtonWidgets.dart';
import 'widgets/containerPickerNumber.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  @override
  Widget build(BuildContext context) {
    // int _currentValue = 1;

    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: Center(
          child: Column(
        children: [
          const Divider(height: 80),
          textApp(
              fontSize: 26.0,
              fontWeight: FontWeight.w700,
              text: 'HOW OLD ARE YOU ?',
              textColor: ColorList.colors['white']),
          const Divider(height: 12),
          textApp(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              text: 'THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
              textColor: ColorList.colors['white']),
          const Divider(
            height: 111,
          ),
          //SPINNER
          const ContainerPickerNumber(),
          const Divider(
            height: 115,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buttonRecoil(
                  fuctionButton: () {
                    Navigator.pushReplacementNamed(context, '/gender');
                  },
                  iconColor: ColorList.colors['white'],
                  height: 54.0,
                  width: 54.0,
                  color: ColorList.colors['quaternary'],
                  icon: Icons.keyboard_backspace),
              customButtonWidgets(
                  height: 50.0,
                  iconButton: Icons.arrow_right,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/weight');
                  },
                  textButton: 'Next',
                  width: 120.0),
            ],
          )
        ],
      )),
    );
  }
}
