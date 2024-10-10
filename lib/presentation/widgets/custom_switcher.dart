import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';

class CustomSwicher extends StatelessWidget {
  const CustomSwicher({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: value,
      activeTrackColor: AppColors.green,
      activeColor: AppColors.greyLight,
      inactiveTrackColor: AppColors.black,
      onChanged: onChanged,
    );
  }
}
