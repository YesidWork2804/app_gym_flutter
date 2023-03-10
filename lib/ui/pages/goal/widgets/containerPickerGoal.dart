import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/providers/AppProvider.dart';

class ContainerPickerGoal extends StatefulWidget {
  const ContainerPickerGoal({Key? key}) : super(key: key);

  @override
  State<ContainerPickerGoal> createState() => _ContainerPickerGoalState();
}

class _ContainerPickerGoalState extends State<ContainerPickerGoal> {
  String _currentValue = 'Get fitter';
  Color colorDivider = const Color.fromRGBO(208, 253, 62, 1);
  final List<String> _options = [
    'Gain Weight',
    'Lose weight',
    'Get fitter',
    'Gain more flexible',
    'Learn the basic',
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
                        _options.indexOf(option) == myProvider.selectGoal
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
                        _options.indexOf(option) == myProvider.selectGoal
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
            myProvider.updateSelectGoal(index.toDouble());
            setState(() => _currentValue = _options[index]);
          }),
    );
  }
}
