import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
// ignore: prefer_mixin
class ThemeChange_Provider with ChangeNotifier, DiagnosticableTreeMixin {
  double _count = 0;

  double get count => _count;

  void update(double count) {
    _count = count;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    // properties.add(IntProperty('count',  ));
  }
}
