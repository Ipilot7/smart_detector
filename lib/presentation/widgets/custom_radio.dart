import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';

class CustomRadio<T> extends StatelessWidget {
  const CustomRadio({
    super.key,
    required this.value,
    required this.onChanged,
    required this.groupValue,
  });
  final T value, groupValue;
  final void Function(T) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        width: 22,
        height: 22,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.black,
            border: Border.all(color: const Color(0xff444444))),
        child: value == groupValue
            ? const CircleAvatar(
                radius: 5,
                backgroundColor: AppColors.green,
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
