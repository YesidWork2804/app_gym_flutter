import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: Center(
        child: Text(
          'genderPage',
          style: TextStyle(color: ColorList.colors['white']),
        ),
      ),
    );
  }
}
