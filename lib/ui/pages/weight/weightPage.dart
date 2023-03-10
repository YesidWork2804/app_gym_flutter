import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:vertical_weight_slider/vertical_weight_slider.dart';

import '../../widgets/buttonRecoil.dart';
import '../../widgets/customButtonWidgets.dart';
import '../../widgets/textApp.dart';
import 'widgets/myVerticalWeightSlider.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({Key? key}) : super(key: key);

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
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
    int _pesoSeleccionado = 50; // Valor por defecto
    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: Center(
        child: Column(
          children: [
            const Divider(height: 80),
            textApp(
                fontSize: 26.0,
                fontWeight: FontWeight.w700,
                text: 'WHAT’S YOUR WEIGHT?',
                textColor: ColorList.colors['white']),
            const Divider(height: 12),
            textApp(
                fontSize: 15.0,
                fontWeight: FontWeight.w700,
                text: 'YOU CAN ALWAYS CHANGE THIS LATER',
                textColor: ColorList.colors['white']),
            const Divider(height: 122),
            const MyVerticalWeightSlider(),
            const Divider(height: 273),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonRecoil(
                    fuctionButton: () {
                      Navigator.pushReplacementNamed(context, '/age');
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
                      Navigator.pushReplacementNamed(context, '/height');
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
