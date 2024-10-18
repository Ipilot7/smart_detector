import 'package:flutter/material.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/components/textx.dart';

class DisconnectPage extends StatelessWidget {
  const DisconnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Отключить"),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            TextX(
                """Вы собираетесь отключить внешний Smart Detector. Вы не сможете дальше работать с приложением, пока не выполните повторное подключение.

Отключаем?""")
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomButton(text: "Отключить", onPressed: () {}),
      ),
    );
  }
}
