import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/custom_button.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/widgets/custom_switcher.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        title: Text(
          "Привет, Smart Detector!",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Assets.images.processorHello.image()),
            18.g,
            Text(
              """Приложение Smart Detector работает только в паре с внешними устройствами, которые поддерживают одноименную технологию беспроводного подключения. Полный список доступных устройств вы можете увидеть на нашем официальном сайте.
      
      Наша программа не является навигатором или GPS-информатором и может предупреждать только о наличие частот, которые используют дорожные радары.
      
      Благодаря работе в фоне вы можете использовать в паре с приложением Smart Detector любое другое приложение: навигатор или GPS-информатор.
      
      Мы ни в коем случае не советуем вам нарушать Правила дорожного движения. Помните, что превышение скоростного лимита может спровоцировать дорожно-транспортное происшествие и привести к серьезным и необратимым последствиям.
      
      Не забывайте, что ни одно устройство или приложение, которое работает в рамках действующего законодательства, не даст вам полной защиты от штрафов, если вы нарушаете Правила дорожного движения.
      
      Для продолжения работы необходимо подписать пользовательское соглашение, полный текст которого вы можете прочитать по ссылке.
      
     """,
              style: AppTextStyles.body15w5,
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Подписать",
                  style: AppTextStyles.body15wb,
                ),
                CustomSwicher(
                  value: isActive,
                  onChanged: (value) {
                    isActive = value;
                    setState(() {});
                  },
                )
              ],
            ),
            CustomButton(
              isActive: isActive,
              onPressed: () {
                if (isActive) {
                  //todo
                }
              },
              text: 'Продолжить',
            )
          ],
        ),
      ),
    );
  }
}
