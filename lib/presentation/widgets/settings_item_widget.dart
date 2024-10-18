import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/widgets/custom_switcher.dart';

class SettingsItemWidget extends StatelessWidget {
  const SettingsItemWidget({
    super.key,
    required this.title,
    this.trailingText,
    this.switcherOn = false,
    this.value = false,
    this.onChanged,
    this.trailingTap,
    this.titleWidget,
  });
  final String title;
  final String? trailingText;
  final bool switcherOn, value;
  final void Function(bool)? onChanged;
  final void Function()? trailingTap;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleWidget ??
              Text(
                title,
                style: AppTextStyles.body15w5,
              ),
          switcherOn
              ? CustomSwicher(value: value, onChanged: onChanged)
              : GestureDetector(
                  onTap: trailingTap,
                  child: Row(
                    children: [
                      Text(
                        trailingText ?? '',
                        style: AppTextStyles.body15w5
                            .copyWith(color: AppColors.trailingColor),
                      ),
                      10.g,
                      if (trailingTap != null) Assets.icons.right.svg()
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
