import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/components/custom_icon_button.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/presentation/logic/bloc/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/radio_tabs.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Профиль «Россия»"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(15),
            children: [
              const TextX("Отключение радар-детектора:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    onTap: () {
                      bloc.add(const ChangeOffRadarDetectorEvent(false));
                    },
                    icon: Assets.icons.minus.svg(),
                  ),
                  TextX("${state.offRadarDetector.toInt()} км/ч"),
                  CustomIconButton(
                    onTap: () {
                      bloc.add(const ChangeOffRadarDetectorEvent(true));
                    },
                    icon: Assets.icons.plus.svg(),
                  )
                ],
              ),
              const TextX("Смарт переход «Город - Трасса»:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    onTap: () {
                      bloc.add(const ChangeSmartCityTrassEvent(false));
                    },
                    icon: Assets.icons.minus.svg(),
                  ),
                  TextX("${state.smartCityTrass} км/ч"),
                  CustomIconButton(
                    onTap: () {
                      bloc.add(const ChangeSmartCityTrassEvent(true));
                    },
                    icon: Assets.icons.plus.svg(),
                  )
                ],
              ),
              const TextX("Чувствительность в режиме «Город»:"),
              Slider(
                value: state.sensivityCity,
                max: 100,
                label: state.sensivityCity.round().toString(),
                activeColor: AppColors.green,
                inactiveColor: AppColors.black,
                thumbColor: AppColors.greyLight,
                onChanged: (double value) {
                  bloc.add(ChangeSensivityCityEvent(value));
                },
              ),
              const TextX("Чувствительность в режиме «Трасса»:"),
              Slider(
                value: state.sensivityTrass,
                max: 100,
                label: state.sensivityTrass.round().toString(),
                activeColor: AppColors.green,
                inactiveColor: AppColors.black,
                thumbColor: AppColors.greyLight,
                onChanged: (double value) {
                  bloc.add(ChangeSensivityTrassEvent(value));
                },
              ),
              SettingsItemWidget(
                title: 'К-диапазон',
                value: state.kDiapazon,
                switcherOn: true,
                onChanged: (value) {
                  bloc.add(ChangeKDiapazonEvent(value));
                },
              ),
              const KDiapazonStatusWidget(),
              SettingsItemWidget(
                title: "Кордон",
                value: state.kardon,
                switcherOn: true,
                onChanged: (value) {
                  bloc.add(ChangeKardonEvent(value));
                },
              ),
              const KordonStatusWidget()
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomButton(
            text: "Вернуть настройки по умолчанию", onPressed: () {}),
      ),
    );
  }
}
