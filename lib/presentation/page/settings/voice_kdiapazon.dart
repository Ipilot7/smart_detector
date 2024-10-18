import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/voice_kdiapazon.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class VoiceKDiapazonPage extends StatelessWidget {
  const VoiceKDiapazonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Звук К-диапазона"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: VoiceKDiapazonStatus.values.length,
            itemBuilder: (context, index) => SettingsItemWidget(
              trailingText: "Прослушать",
              trailingTap: () {
                // context.push(Routes.profileSettings);
              },
              title: '',
              titleWidget: Row(
                children: [
                  CustomRadio<VoiceKDiapazonStatus>(
                      value: VoiceKDiapazonStatus.values[index],
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeVoiceKDiapazonEvent(value));
                      },
                      groupValue: state.voiceKDiapazonStatus),
                  8.g,
                  TextX(VoiceKDiapazonStatus.values[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
