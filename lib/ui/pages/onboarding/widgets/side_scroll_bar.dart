import 'package:app_gym_flutter/domain/providers/themes/themeChange_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../components/colors/list_Colors.dart';

Widget side_scroll_bar({context, page: double}) {
  var myProvider = Provider.of<ThemeChange_Provider>(context);

  return Container(
    height: 4,
    width: myProvider.count == page ? 36 : 16,
    color: myProvider.count == page
        ? ColorList.colors['secondary']
        : ColorList.colors['tertiary'],
  );
}
