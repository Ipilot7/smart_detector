import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Smart Detector найден!",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.images.radarImage.image()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Модель",
                    style: AppTextStyles.body15w5,
                  ),
                  const Text("Inspector Star Plus"),
                ],
              ),
            ),
            Text(
              "Все готово к работе, подключаем?",
              style: AppTextStyles.body15w5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Row(
          children: [
            Flexible(
              child: CustomButton(
                isActive: true,
                onPressed: () {
                  //todo
                },
                text: 'В начало',
              ),
            ),
            20.g,
            Flexible(
              child: CustomButton(
                isActive: true,
                onPressed: () {
                  //todo
                  context.push(Routes.home);
                },
                text: 'Подключить',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
