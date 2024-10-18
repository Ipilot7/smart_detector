import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/routes.dart';

class UpdateFirmwareInfoPage extends StatelessWidget {
  const UpdateFirmwareInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Обновление прошивки"),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextX("""Будет установлено ПО 1.22 - beta.
      
Помните, что во время установки ПО нельзя закрывать приложение и отключать питание от внешнего устройства.
      
Начинаем установку?""")
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomButton(
            text: "Начать обновление",
            onPressed: () {
              context.push(Routes.updatingFirmware);
            }),
      ),
    );
  }
}
