import 'package:flutter/material.dart';
import 'package:flutter_bloc_setup/core/theme/theme.dart';
import 'package:flutter_bloc_setup/core/theme/util.dart';

class ThemeManager {
  final BuildContext context;

  ThemeManager(this.context);

  ThemeData setupTheme() {
    var textTheme = createTextTheme(context, "Roboto", "Roboto");
    var theme = MaterialTheme(textTheme);

    return theme.dark();
  }
}
