import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Size? minimumSize;
  final BorderRadiusGeometry? borderRadius;
  final bool isActive;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.minimumSize,
    this.borderRadius,
    this.isActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? AppColors.greyLight : AppColors.grey,
        minimumSize: minimumSize ?? const Size(double.infinity, 35),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AutoSizeText(
            text,
            style:
                AppTextStyles.body15w5.copyWith(color: AppColors.btnTextColor),
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
