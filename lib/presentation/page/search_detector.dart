import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';

class SearchDetectorPage extends StatelessWidget {
  const SearchDetectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isActive = true;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          isActive == true ? "Ищем Smart Detector..." : "Ничего не найдено!",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isActive == true
                ? Assets.images.processorBluetooth.image()
                : Assets.images.processorError.image(),
            18.g,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                isActive == true
                    ? "Поиск займет не более минуты."
                    : "Нам не удалось найти устройство с поддержкой технологии Smart Detector, попробуйте повторить поиск.",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: CustomButton(
          isActive: true,
          onPressed: () {
            // context.push(Routes/);
            if (isActive) {
              context.push(Routes.device);
            }
          },
          text: isActive == true ? 'Начать поиск' : "В начало",
        ),
      ),
    );
  }
}
