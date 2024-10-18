import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/kdiapazon_status.dart';
import 'package:smart_detector/common/enums/settings_status.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';

class RadioTabs extends StatefulWidget {
  const RadioTabs({super.key});

  @override
  State<RadioTabs> createState() => _RadioTabsState();
}

class _RadioTabsState extends State<RadioTabs> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          itemCount: SettingsStatus.values.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                CustomRadio(
                    value: SettingsStatus.values[index],
                    onChanged: (value) {
                      context
                          .read<SettingsBloc>()
                          .add(ChangeSettingsEvent(value));
                    },
                    groupValue: state.settingsStatus),
                8.g,
                TextX(SettingsStatus.values[index].name)
              ],
            ),
          ),
        );
      },
    );
  }
}

class KordonStatusWidget extends StatelessWidget {
  const KordonStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          itemCount: KordonStatus.values.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                CustomRadio(
                    value: KordonStatus.values[index],
                    onChanged: (value) {
                      context
                          .read<SettingsBloc>()
                          .add(ChangeKardonStatusEvent(value));
                    },
                    groupValue: state.kordonStatus),
                8.g,
                TextX(KordonStatus.values[index].name)
              ],
            ),
          ),
        );
      },
    );
  }
}

class KDiapazonStatusWidget extends StatelessWidget {
  const KDiapazonStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          itemCount: KordonStatus.values.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                CustomRadio(
                    value: KordonStatus.values[index],
                    onChanged: (value) {
                      context
                          .read<SettingsBloc>()
                          .add(ChangeKDiapazonStatusEvent(value));
                    },
                    groupValue: state.kDiapazonStatus),
                8.g,
                TextX(KordonStatus.values[index].name)
              ],
            ),
          ),
        );
      },
    );
  }
}
