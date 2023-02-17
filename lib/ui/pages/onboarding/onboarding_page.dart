import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../components/colors/list_Colors.dart';
import '../../../domain/providers/themes/themeChange_Provider.dart';
import '../../widgets/custom_button_widgets.dart';
import 'widgets/image_onboarding.dart';
import 'widgets/side_scroll_bar.dart';
import 'widgets/text_onboarding.dart';

class Onboarding_page extends StatefulWidget {
  @override
  State<Onboarding_page> createState() => _Onboarding_pageState();
}

class _Onboarding_pageState extends State<Onboarding_page> {
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
    var myProvider = Provider.of<ThemeChange_Provider>(context);
    return Scaffold(
      backgroundColor: ColorList.colors['primary'],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (value) => {myProvider.update(value.toDouble())},
                itemBuilder: (context, index) => Column(
                  children: [
                    image_onboarding(
                        width: 417.0,
                        height: 515.0,
                        image: demo_data[index].image),
                    const Divider(height: 33),
                    text_onboarding(
                        fontSize: 25.0,
                        textBold: demo_data[index].textBold,
                        textNormal: demo_data[index].textNormal),
                    Divider(height: myProvider.count != 2 ? 102 : 52),
                    myProvider.count == 2
                        ? custom_button_widgets()
                        : Container(),
                    const Divider(height: 52),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        side_scroll_bar(context: context, page: 0),
                        const Padding(padding: EdgeInsets.only(right: 10)),
                        side_scroll_bar(context: context, page: 1),
                        const Padding(padding: EdgeInsets.only(right: 10)),
                        side_scroll_bar(context: context, page: 2),

                        // Container(
                        //   height: 4,
                        //   width: myProvider.count == 0 ? 36 : 16,
                        //   color: myProvider.count == 0
                        //       ? ColorList.colors['secondary']
                        //       : ColorList.colors['tertiary'],
                        // ),
                        // const Padding(padding: EdgeInsets.only(right: 10)),
                        // Container(
                        //   height: 4,
                        //   width: myProvider.count == 1 ? 36 : 16,
                        //   color: myProvider.count == 1
                        //       ? ColorList.colors['secondary']
                        //       : ColorList.colors['tertiary'],
                        // ),
                        // const Padding(padding: EdgeInsets.only(right: 10)),
                        // Container(
                        //   height: 4,
                        //   width: myProvider.count == 2 ? 36 : 16,
                        //   color: myProvider.count == 2
                        //       ? ColorList.colors['secondary']
                        //       : ColorList.colors['tertiary'],
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Onboard {
  late final String textNormal, textBold, image;
  late final custom_button_widgets;

  Onboard(
      {required this.image,
      required this.textNormal,
      required this.textBold,
      this.custom_button_widgets});
}

final List<Onboard> demo_data = [
  Onboard(
      image: 'assets/images/onboarding_1.png',
      textNormal: 'MEET YOUR COACH',
      textBold: 'START YOUR JOURNEY'),
  Onboard(
      image: 'assets/images/onboarding_2.png',
      textNormal: 'CREATE A WORKOUT PLAN',
      textBold: 'TO STAY FIT'),
  Onboard(
      image: 'assets/images/onboarding_3.png',
      textNormal: 'ACTIONS THE',
      textBold: 'KEY TO ALL SUCCESS',
      custom_button_widgets: custom_button_widgets()),
];
