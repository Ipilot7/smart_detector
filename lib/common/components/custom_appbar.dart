import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.actions,
    required this.titleText,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super();
  @override
  final Size preferredSize;
  final String titleText;

  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Container(
            width: 35,
            height: 35,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.greyLight,
                borderRadius: BorderRadius.circular(10)),
            child: Assets.icons.arrowLeft.svg()),
      ),
      centerTitle: true,
      title: Text(
        titleText,
        style: AppTextStyles.body20w5,
      ),
      actions: actions,
    );
  }
}
