import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smart_detector/common/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String? flagAsset;
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final Size? minimumSize;
  final BorderRadiusGeometry? borderRadius;

  const CustomButton({
    super.key,
    this.flagAsset,
    required this.text,
    required this.onPressed,
    this.color,
    this.textStyle,
    this.minimumSize,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // foregroundColor: const Color.fromRGBO(0, 0, 0, 1),
        backgroundColor: color ?? Colors.white,
        minimumSize: minimumSize ?? const Size(300, 50),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(30),
        ),
        side: BorderSide(color: Colors.grey.shade300, width: 1),
        elevation: 3,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (flagAsset != null)
            Image.asset(
              flagAsset!,
              width: 24,
              height: 24,
            ),
          if (flagAsset != null) const Gap(10),
          Flexible(
            child: AutoSizeText(
              text,
              style: textStyle ?? AppTextStyles.body18w5,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
