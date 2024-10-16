// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/widgets/radio_tabs.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: 'Настройки',
        actions: [
          CustomButton(
              minimumSize: const Size(1, 35), text: "Помощь", onPressed: () {}),
          10.g
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SettingsItemWidget(
            title: 'Режим работы',
            trailingText: "Смарт",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Автоприглушение',
            switcherOn: true,
            value: true,
            onChanged: (p0) {},
          ),
          SettingsItemWidget(
            title: 'Профиль',
            trailingText: "Россия",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Работа в фоне',
            switcherOn: true,
            value: true,
            onChanged: (p0) {},
          ),
          const RadioTabs(),
          const TextX(
            "Громкость приложения:",
          ),
          Slider(
            value: 20,
            max: 100,
            label: 20.round().toString(),
            activeColor: AppColors.green,
            inactiveColor: AppColors.black,
            thumbColor: AppColors.greyLight,
            onChanged: (double value) {
              // setState(() {
              //   _currentSliderValue = value;
              // });
            },
          ),
          SettingsItemWidget(
            title: 'Голосовой пакет',
            trailingText: "Алёна (Русский)",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'ПроЗвук сигнатурыфиль',
            trailingText: "Звук 1",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Звук К-диапазона',
            trailingText: "Без звука",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Подключен',
            trailingText: "Smart Detector D1",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Техническая поддержка',
            trailingText: "",
            trailingTap: () {
              // todo
            },
          ),
          SettingsItemWidget(
            title: 'Пользовательское соглашение',
            trailingText: "",
            trailingTap: () {
              // todo
            },
          ),
        ],
      ),
    );
  }
}
