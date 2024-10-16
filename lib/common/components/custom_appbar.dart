import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/components/custom_icon_button.dart';

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
      leading: CustomIconButton(
        onTap: () {
          context.pop();
        },
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
