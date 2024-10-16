import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.onTap,
    this.icon,
  });
  final void Function()? onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 35,
          height: 35,
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.greyLight,
              borderRadius: BorderRadius.circular(10)),
          child: icon ?? Assets.icons.arrowLeft.svg()),
    );
  }
}
