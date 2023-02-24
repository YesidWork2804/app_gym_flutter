import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/colors/list_Colors.dart';
import '../../widgets/buttonRecoil.dart';
import '../../widgets/customButtonWidgets.dart';
import '../../widgets/textApp.dart';
import 'widgets/containerPickerGoal.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({Key? key}) : super(key: key);

  @override
  State<GoalPage> createState() => GgoalPageState();
}

class GgoalPageState extends State<GoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: Center(
        child: Column(
          children: [
            const Divider(height: 80),
            textApp(
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
                text: 'WHAT’S YOUR GOAL?',
                textColor: ColorList.colors['white']),
            const Divider(height: 12),
            textApp(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                text: 'THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
                textColor: ColorList.colors['white']),
            const Divider(height: 156),
            const ContainerPickerGoal(),
            // const ContainerPickerHeight(),
            const Divider(height: 162),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonRecoil(
                    fuctionButton: () {
                      Navigator.pushReplacementNamed(context, '/height');
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
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    textButton: 'Next',
                    width: 120.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
