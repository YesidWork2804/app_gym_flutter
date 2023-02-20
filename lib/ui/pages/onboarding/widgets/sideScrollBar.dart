import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../components/colors/list_Colors.dart';
import '../../../../domain/providers/AppProvider.dart';

Widget sideScrollBar({context, page: double}) {
  var myProvider = Provider.of<AppProvider>(context);

  return Container(
    height: 4,
    width: myProvider.count == page ? 36 : 16,
    color: myProvider.count == page
        ? ColorList.colors['secondary']
        : ColorList.colors['tertiary'],
  );
}
