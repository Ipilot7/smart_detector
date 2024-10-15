import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/settings_switcher.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/cubit/permissions_cubit.dart';

class PermissionsPage extends StatefulWidget {
  const PermissionsPage({super.key});

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

class _PermissionsPageState extends State<PermissionsPage> {
  late PermissionsCubit bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<PermissionsCubit>();
  }

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
                  isActive: state.isNotifications ?? false,
                  text: "Уведомления",
                  onChanged: (p0) => bloc.changeNotification(p0),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
