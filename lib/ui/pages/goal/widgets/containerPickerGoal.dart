import 'package:app_gym_flutter/components/colors/list_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerPickerGoal extends StatefulWidget {
  const ContainerPickerGoal({Key? key}) : super(key: key);

  @override
  State<ContainerPickerGoal> createState() => _ContainerPickerGoalState();
}

class _ContainerPickerGoalState extends State<ContainerPickerGoal> {
  String _currentValue = 'Get fitter';
  final List<String> _options = [
    'Gain Weight',
    'Lose weight',
    'Get fitter',
    'Gain more flexible',
    'Learn the basic',
  ];
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(initialItem: 3);

  Color colorDivider = const Color.fromRGBO(208, 253, 62, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 247,
      width: 200,
      child: Center(
        child: ListWheelScrollView(
            itemExtent: 50,
            controller: _scrollController,
            children: _options
                .map(
                  (option) => Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        top: _options.indexOf(option) ==
                                _scrollController.selectedItem
                            ? BorderSide(width: 2, color: colorDivider)
                            : BorderSide.none,
                        bottom: _options.indexOf(option) ==
                                _scrollController.selectedItem
                            ? BorderSide(width: 2, color: colorDivider)
                            : BorderSide.none,
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                          option,
                          style: TextStyle(
                              color: ColorList.colors['white'], fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            onSelectedItemChanged: (index) {
              setState(() => _currentValue = _options[index]);
            }),
      ),
    );
  }
}
