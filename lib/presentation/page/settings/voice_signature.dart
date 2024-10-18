import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/voice_signature_status.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class VoiceSignaturePage extends StatelessWidget {
  const VoiceSignaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Звук сигнатуры"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: VoiceSignatureStatus.values.length,
            itemBuilder: (context, index) => SettingsItemWidget(
              trailingText: "Прослушать",
              trailingTap: () {
                // context.push(Routes.profileSettings);
              },
              title: '',
              titleWidget: Row(
                children: [
                  CustomRadio<VoiceSignatureStatus>(
                      value: VoiceSignatureStatus.values[index],
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeVoiceSignatureEvent(value));
                      },
                      groupValue: state.voiceSignatureStatus),
                  8.g,
                  TextX(VoiceSignatureStatus.values[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
