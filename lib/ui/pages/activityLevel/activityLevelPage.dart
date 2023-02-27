import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/colors/list_Colors.dart';
import '../../widgets/buttonRecoil.dart';
import '../../widgets/customButtonWidgets.dart';
import '../../widgets/textApp.dart';
import 'widgets/containerPickerActivityLevel.dart';

class ActivityLevelPage extends StatefulWidget {
  const ActivityLevelPage({Key? key}) : super(key: key);

  @override
  State<ActivityLevelPage> createState() => AactivityLevelPageState();
}

class AactivityLevelPageState extends State<ActivityLevelPage> {
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
                text: 'YOUR REGULAR PHYSICAL ACTIVITY LEVEL?',
                textColor: ColorList.colors['white']),
            const Divider(height: 12),
            textApp(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                text: 'THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
                textColor: ColorList.colors['white']),
            const Divider(height: 126),
            const ContainerPickerActivityLevel(),
            const Divider(height: 162),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonRecoil(
                    fuctionButton: () {
                      Navigator.pushReplacementNamed(context, '/goal');
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
