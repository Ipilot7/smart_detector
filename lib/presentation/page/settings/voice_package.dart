import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/voice_package_status.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class VoicePackagePage extends StatelessWidget {
  const VoicePackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Голосовой пакет"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: VoicePackageStatus.values.length,
            itemBuilder: (context, index) => SettingsItemWidget(
              trailingText: "Прослушать",
              trailingTap: () {
                // context.push(Routes.profileSettings);
              },
              title: '',
              titleWidget: Row(
                children: [
                  CustomRadio<VoicePackageStatus>(
                      value: VoicePackageStatus.values[index],
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeVoicePackageEvent(value));
                      },
                      groupValue: state.voicePackageStatus),
                  8.g,
                  TextX(VoicePackageStatus.values[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
