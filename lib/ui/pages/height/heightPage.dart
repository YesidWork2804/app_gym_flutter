import 'package:app_gym_flutter/ui/pages/height/widgets/containerPickerHeight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/colors/list_Colors.dart';
import '../../widgets/buttonRecoil.dart';
import '../../widgets/customButtonWidgets.dart';
import '../../widgets/textApp.dart';

class HeightPage extends StatefulWidget {
  const HeightPage({Key? key}) : super(key: key);

  @override
  State<HeightPage> createState() => _HeightPageState();
}

class _HeightPageState extends State<HeightPage> {
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
                text: 'WHAT’S YOUR HEIGHT?',
                textColor: ColorList.colors['white']),
            const Divider(height: 12),
            textApp(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                text: 'THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
                textColor: ColorList.colors['white']),
            const Divider(height: 111),
            const ContainerPickerHeight(),
            const Divider(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonRecoil(
                    fuctionButton: () {
                      Navigator.pushReplacementNamed(context, '/weight');
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
