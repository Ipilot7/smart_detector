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
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';
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
                value: state.currentSliderValue,
                max: 100,
                label: state.currentSliderValue.round().toString(),
                activeColor: AppColors.green,
                inactiveColor: AppColors.black,
                thumbColor: AppColors.greyLight,
                onChanged: (double value) {
                  bloc.add(ChangeSliderEvent(value));
                },
              ),
              SettingsItemWidget(
                title: 'Голосовой пакет',
                trailingText: "Алёна (Русский)",
                trailingTap: () {
                  context.push(Routes.voicePackage);
                },
              ),
              SettingsItemWidget(
                title: 'Звук сигнатуры',
                trailingText: "Звук 1",
                trailingTap: () {
                  context.push(Routes.voiceSignature);
                },
              ),
              SettingsItemWidget(
                title: 'Звук К-диапазона',
                trailingText: "Без звука",
                trailingTap: () {
                  context.push(Routes.voiceKDiapazon);
                },
              ),
              SettingsItemWidget(
                title: 'Подключен',
                trailingText: "Smart Detector D1",
                trailingTap: () {
                  context.push(Routes.connectedTo);
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
