// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/presentation/logic/bloc/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/radio_tabs.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    return Scaffold(
      appBar: CustomAppbar(
        titleText: 'Настройки',
        actions: [
          CustomButton(
              minimumSize: const Size(1, 35), text: "Помощь", onPressed: () {}),
          10.g
        ],
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              SettingsItemWidget(
                title: 'Режим работы',
                trailingText: state.operationModeStatus.name,
                trailingTap: () {
                  context.push(Routes.operatingMode);
                },
              ),
              SettingsItemWidget(
                title: 'Автоприглушение',
                value: state.isAvtomute,
                switcherOn: true,
                onChanged: (value) {
                  bloc.add(ChageAutoMuteEvent(value));
                },
              ),
              SettingsItemWidget(
                title: 'Профиль',
                trailingText: state.profileStatus.name,
                trailingTap: () {
                  context.push(Routes.profile);
                },
              ),
              SettingsItemWidget(
                title: 'Работа в фоне',
                switcherOn: true,
                value: state.isForeground,
                onChanged: (value) {
                  bloc.add(ChageWorkOnForegroundEvent(value));
                },
              ),
              const RadioTabs(),
              15.g,
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
          );
        },
      ),
    );
  }
}
