import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:app_gym_flutter/domain/providers/AppProvider.dart';
import 'package:app_gym_flutter/ui/pages/gender/widgets/genderButton.dart';
import 'package:app_gym_flutter/ui/widgets/customButtonWidgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/textApp.dart';

class GenderPage extends StatelessWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<AppProvider>(context);
    return Scaffold(
        backgroundColor: ColorList.colors['primary'],
        body: Center(
          child: Column(
            children: [
              const Divider(height: 80),
              textApp(
                  text: 'TELL US ABOUT YOURSELF!',
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                  textColor: ColorList.colors['white']),
              const Divider(height: 12),
              textApp(
                  text:
                      'TO GIVE YOU A BETTER EXPERIENCE WE NEED TO KNOW YOUR GENDER',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  textColor: ColorList.colors['white']),
              const Divider(height: 108),
              GestureDetector(
                onTap: () {
                  myProvider.updateButtonGender(1);
                },
                child: genderButton(
                    iconColor: myProvider.buttonGender == 1
                        ? ColorList.colors['black']
                        : ColorList.colors['white'],
                    colorButton: myProvider.buttonGender == 1
                        ? ColorList.colors['secondary']
                        : ColorList.colors['quaternary'],
                    colorText: myProvider.buttonGender == 1
                        ? ColorList.colors['black']
                        : ColorList.colors['white'],
                    icon: Icons.male,
                    text: 'Male'),
              ),
              const Divider(height: 40),
              GestureDetector(
                onTap: () {
                  myProvider.updateButtonGender(2);
                },
                child: genderButton(
                    iconColor: myProvider.buttonGender == 2
                        ? ColorList.colors['black']
                        : ColorList.colors['white'],
                    colorButton: myProvider.buttonGender == 2
                        ? ColorList.colors['secondary']
                        : ColorList.colors['quaternary'],
                    colorText: myProvider.buttonGender == 2
                        ? ColorList.colors['black']
                        : ColorList.colors['white'],
                    icon: Icons.female,
                    text: 'Female'),
              ),
              const Divider(height: 132),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 224),
                    child: customButtonWidgets(
                        height: 50.0,
                        iconButton: Icons.arrow_right,
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/age');
                        },
                        textButton: 'Next',
                        width: 120.0),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
