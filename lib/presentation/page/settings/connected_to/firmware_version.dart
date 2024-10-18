import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/presentation/logic/bloc/connected_to_bloc.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class FirmwareVersionPage extends StatelessWidget {
  const FirmwareVersionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ConnectedToBloc>();
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Обновление прошивки"),
      body: BlocBuilder<ConnectedToBloc, ConnectedToState>(
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.all(15),
            children: [
              SettingsItemWidget(
                switcherOn: true,
                value: state.isBetaVersion,
                onChanged: (value) => bloc.add(ChangeIsBetaVersionEvent(value)),
                title: 'Раний доступ к beta-версиям',
              ),
              SettingsItemWidget(
                switcherOn: true,
                value: state.isNewFirmware,
                onChanged: (value) => bloc.add(ChangeIsNewFirmwareEvent(value)),
                title: 'Уведомлять о новом ПО',
              ),
              const SettingsItemWidget(
                trailingText: "1.22T",
                title: 'Сейчас установлено ПО',
              ),
              const TextX("Выберите прошивку для установки:"),
              15.g,
              SettingsItemWidget(
                trailingText: "1.22T",
                trailingTap: () {
                  context.push(Routes.updateFirmwareInfo);
                },
                title: '1.00',
              ),
            ],
          );
        },
      ),
    );
  }
}
