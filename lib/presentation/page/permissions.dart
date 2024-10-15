import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/settings_switcher.dart';
import 'package:smart_detector/common/extentions/extention.dart';

class PermissionsPage extends StatefulWidget {
  const PermissionsPage({super.key});

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

class _PermissionsPageState extends State<PermissionsPage> {
  bool isNotification = false;
  bool isGeolocations = false;
  bool isBackgroundGeolocation = false;
  bool isForegroundApps = false;
  bool isBluetoothOn = false;
  bool isShareInformation = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Необходимы разрешения",
          style: AppTextStyles.body20w5,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(child: Assets.images.processorSelect.image()),
            18.g,
            Text(
              "Приложение Smart Detector не сможет работать без следующих системных разрешений:",
              style: AppTextStyles.body15w5,
            ),
            SettingsSwitcher(isActive: isNotification, text: "Уведомления")
          ],
        ),
      ),
    );
  }
}
