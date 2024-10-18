import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/components/textx.dart';

class UpdatingFirmwarePage extends StatelessWidget {
  const UpdatingFirmwarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Обновление прошивки",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearProgressIndicator(
              minHeight: 6,
              borderRadius: BorderRadius.circular(5),
              color: AppColors.green,
              backgroundColor: AppColors.black,
              value: .7,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: TextX("Идет процесс обновления ПО"),
            ),
            const TextX(
                "Не закрывайте приложение Smart Detector и не отключайте питание от внешнего устройства.")
          ],
        ),
      ),
    );
  }
}
