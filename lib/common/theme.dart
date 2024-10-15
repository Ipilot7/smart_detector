import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';

class ThemeDataExt {
  static final darkTheme = ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
      ));
}
