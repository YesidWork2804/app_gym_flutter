import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/providers/AppProvider.dart';

class ContainerPickerActivityLevel extends StatefulWidget {
  const ContainerPickerActivityLevel({Key? key}) : super(key: key);

  @override
  State<ContainerPickerActivityLevel> createState() =>
      _ContainerPickerActivityLevel();
}

class _ContainerPickerActivityLevel
    extends State<ContainerPickerActivityLevel> {
  String _currentValue = 'Get fitter';
  Color colorDivider = const Color.fromRGBO(208, 253, 62, 1);
  final List<String> _options = [
    'Rookie',
    'Beginner',
    'Intermediate',
    'Advance',
    'True Beast',
  ];
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 0);

  @override
  Widget build(BuildContext context) {
    final myProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      height: 247,
      // width: 200,
      child: ListWheelScrollView(
          itemExtent: 50,
          controller: _scrollController,
          children: _options
              .map(
                (option) => Center(
                  child: SizedBox(
                    height: 50,
                    // width: 200,
                    child: Column(
                      children: [
                        _options.indexOf(option) == myProvider.selectActivity
                            ? Container(
                                margin: EdgeInsets.only(bottom: 5),
                                color: ColorList.colors['secondary'],
                                width: 200,
                                height: 3,
                              )
                            : Container(),
                        Text(
                          option,
                          style: TextStyle(
                              color: ColorList.colors['white'], fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                        _options.indexOf(option) == myProvider.selectActivity
                            ? Container(
                                margin: EdgeInsets.only(top: 5),
                                color: ColorList.colors['secondary'],
                                width: 200,
                                height: 3,
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
          onSelectedItemChanged: (index) {
            myProvider.updateSelectActivity(index.toDouble());
            setState(() => _currentValue = _options[index]);
          }),
    );
  }
}
