import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// ignore: prefer_mixin
class AppProvider with ChangeNotifier, DiagnosticableTreeMixin {
  double _count = 0;
  double get count => _count;

  void updatePageOmboardaing(double count) {
    _count = count;
    notifyListeners();
  }

  int _buttonGender = 1;
  int get buttonGender => _buttonGender;

  void updateButtonGender(int buttonGender) {
    _buttonGender = buttonGender;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   // properties.add(IntProperty('count',  ));
  // }
}
