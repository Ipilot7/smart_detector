import 'package:flutter/material.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = "Inter";

  static TextStyle textStyle =
      const TextStyle(fontFamily: fontFamily, color: Colors.white);

  static TextStyle body15w5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      color: Colors.white);
  static TextStyle body15wb = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.white);

  static TextStyle body20w5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.white);
  static TextStyle body30w5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 30,
      color: Colors.white);
  static TextStyle body100w5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 100,
      color: Colors.white);
}
