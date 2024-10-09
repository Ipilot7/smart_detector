import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';

class ThemeDataExt {
  static final darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundColor,
  );
}
