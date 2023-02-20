import 'package:app_gym_flutter/domain/providers/AppProvider.dart';
import 'package:app_gym_flutter/ui/pages/onboarding/widgets/imageOnboarding.dart';
import 'package:app_gym_flutter/ui/widgets/customButtonWidgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../components/colors/list_Colors.dart';
import '../../widgets/textApp.dart';
import 'widgets/sideScrollBar.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<AppProvider>(context);

    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              bottom: 64,
              right: 144,
              left: 143,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sideScrollBar(context: context, page: 0),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  sideScrollBar(context: context, page: 1),
                  const Padding(padding: EdgeInsets.only(right: 10)),
                  sideScrollBar(context: context, page: 2),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (value) =>
                        {myProvider.updatePageOmboardaing(value.toDouble())},
                    itemBuilder: (context, index) => Column(
                      children: [
                        Stack(
                          children: [
                            imageOnboarding(
                                // width: 410.0,
                                // height: 515.0,
                                image: demo_data[index].image),
                          ],
                        ),
                        const Divider(height: 33),
                        textApp(
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          text: demo_data[index].textNormal,
                          textColor: ColorList.colors['primary'],
                        ),
                        textApp(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.0,
                          text: demo_data[index].textBold,
                          textColor: ColorList.colors['primary'],
                        ),
                        const Divider(height: 52),
                        index == 2
                            ? customButtonWidgets(
                                onPressed: () {
                                  // pushReplacement
                                  Navigator.pushReplacementNamed(
                                      context, '/gender');
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const GenderPage()));
                                },
                                height: 50.0,
                                width: 156.0,
                                iconButton: Icons.arrow_right_outlined,
                                textButton: 'Star Now')
                            : Container(),
                        const Divider(height: 52),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Onboard {
  late final String textNormal, textBold, image;
  // late final  customButtonWidgets;
  // customButtonWidgets myText = customButtonWidgets;

  Onboard({
    required this.image,
    required this.textNormal,
    required this.textBold,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: 'assets/images/onboarding_4.jpg',
    textNormal: 'MEET YOUR COACH',
    textBold: 'START YOUR JOURNEY',
  ),
  Onboard(
    image: 'assets/images/onboarding_2.jpg',
    textNormal: 'CREATE A WORKOUT PLAN',
    textBold: 'TO STAY FIT',
  ),
  Onboard(
    image: 'assets/images/onboarding_1.jpg',
    textNormal: 'ACTIONS THE',
    textBold: 'KEY TO ALL SUCCESS',
  ),
];
