import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';

class ConnnectDevicePage extends StatelessWidget {
  const ConnnectDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Подключение к Smart Detector",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Assets.images.processorSearch.image()),
            18.g,
            Text.rich(TextSpan(
                text:
                    """Необходимо выполнить подключение к внешнему устройству с поддержкой технологии Smart Detector, для этого:

  1. Зайдите в настройки смартфона ивключите Bluetooth;
  2. Подключите питание к внешнемуустройству и включите его;
  3. Если это необходимо, активируйте Bluetooth-режим на внешнем устройстве;
  4. Убедитесь, что внешнее устройство в данный момент не подключено к другому смартфону.

Теперь можно начинать поиск.

""",
                style: AppTextStyles.body15w5,
                children: [
                  const TextSpan(
                      text:
                          "Остались вопросы? Вы можете найти ответы на них в разделе "),
                  TextSpan(
                    text: "Помощь.",
                    style: AppTextStyles.body15w5.copyWith(
                        color: AppColors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blue),
                  ),
                ]))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: CustomButton(
          isActive: true,
          onPressed: () {
            context.push(Routes.searchDetector);
          },
          text: 'Начать поиск',
        ),
      ),
    );
  }
}
