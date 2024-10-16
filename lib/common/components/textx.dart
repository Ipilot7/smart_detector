import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';

class TextX extends StatelessWidget {
  const TextX(this.text, {super.key, this.style});
  final String? text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: AppTextStyles.body15w5,
    );
  }
}
