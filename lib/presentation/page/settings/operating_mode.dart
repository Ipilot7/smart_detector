import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/operation_mode_status.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/bloc/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';

class OperatingModePage extends StatelessWidget {
  const OperatingModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Режим работы"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: OperationModeStatus.values.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  CustomRadio(
                      value: OperationModeStatus.values[index],
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeOperationModeEvent(value));
                      },
                      groupValue: state.operationModeStatus),
                  8.g,
                  TextX(OperationModeStatus.values[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
