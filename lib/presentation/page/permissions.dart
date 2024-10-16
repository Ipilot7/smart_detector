import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/settings_switcher.dart';
import 'package:smart_detector/common/components/custom_button.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/presentation/logic/permissions/permissions_cubit.dart';

class PermissionsPage extends StatelessWidget {
  const PermissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PermissionsCubit>();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Необходимы разрешения",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: BlocBuilder<PermissionsCubit, PermissionsState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Center(child: Assets.images.processorSelect.image()),
                18.g,
                Text(
                  "Приложение Smart Detector не сможет работать без следующих системных разрешений:",
                  style: AppTextStyles.body15w5,
                ),
                SettingsSwitcher(
                  isActive: state.isNotifications,
                  text: "Уведомления",
                  onChanged: (p0) => bloc.changeNotification(p0),
                ),
                Text(
                  "Иначе мы не сможем присылать вам важные уведомления.",
                  style: AppTextStyles.body15w5,
                ),
                SettingsSwitcher(
                  isActive: state.isGeolocations,
                  text: "Геолокация",
                  onChanged: (p0) => bloc.changeGeolocation(p0),
                ),
                Text(
                  "Поможет определить скорость движения и скорректировать работу внешнего устройства.",
                  style: AppTextStyles.body15w5,
                ),
                SettingsSwitcher(
                  isActive: state.isBackgroundGeolocation,
                  text: "Геолокация в фоне",
                  onChanged: (p0) => bloc.changeBackgroundLocation(p0),
                ),
                SettingsSwitcher(
                  isActive: state.isForegroundApps,
                  text: "Поверх других приложений",
                  onChanged: (p0) => bloc.changeForegroundApps(p0),
                ),
                Text(
                  "Важно для совместной работы  с другими приложениями, например, с навигатором",
                  style: AppTextStyles.body15w5,
                ),
                SettingsSwitcher(
                  isActive: state.isBluetoothOn,
                  text: "Bluetooth",
                  onChanged: (p0) => bloc.changeBluetooth(p0),
                ),
                Text(
                  "Необходимо для подключения к внешнему устройству.",
                  style: AppTextStyles.body15w5,
                ),
                SettingsSwitcher(
                  isActive: state.isShareInformation,
                  text: "Делиться информацией",
                  onChanged: (p0) => bloc.changeShareInformation(p0),
                ),
                Text(
                  "Это не обязательное разрешение, но так вы поможете сделать приложение Smart Detector лучше.",
                  style: AppTextStyles.body15w5,
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<PermissionsCubit, PermissionsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: CustomButton(
              isActive: state.isAllChanged,
              onPressed: () {
                if (state.isAllChanged) {
                  context.push(Routes.connectToDetector);
                }
              },
              text: 'Продолжить',
            ),
          );
        },
      ),
    );
  }
}
