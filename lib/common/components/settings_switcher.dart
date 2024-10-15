import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/presentation/widgets/custom_switcher.dart';

class SettingsSwitcher extends StatelessWidget {
  const SettingsSwitcher({
    super.key,
    required this.isActive,
    this.onChanged,
    required this.text,
  });

  final bool isActive;
  final void Function(bool)? onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.body15wb,
        ),
        CustomSwicher(
          value: isActive,
          onChanged: onChanged,
        )
      ],
    );
  }
}
