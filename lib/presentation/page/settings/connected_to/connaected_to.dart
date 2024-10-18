import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/presentation/logic/bloc/connected_to_bloc.dart';
import 'package:smart_detector/presentation/widgets/settings_item_widget.dart';

class ConnectedToPage extends StatelessWidget {
  const ConnectedToPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Inspector Star Plus"),
      body: BlocBuilder<ConnectedToBloc, ConnectedToState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Center(
                  child: Assets.images.radarImage.image(),
                ),
                20.g,
                SettingsItemWidget(
                  trailingText: "1.22T",
                  trailingTap: () {
                    context.push(Routes.firmwareVersion);
                  },
                  title: 'Версия прошивки',
                ),
                SettingsItemWidget(
                  switcherOn: true,
                  trailingTap: () {
                    // context.push(Routes.profileSettings);
                  },
                  onChanged: (value) => context
                      .read<ConnectedToBloc>()
                      .add(ChangePowerIndicatorEvent(value)),
                  value: state.isPowerIndicator,
                  title: 'Индикатор питания',
                ),
                SettingsItemWidget(
                  trailingText: '',
                  trailingTap: () {
                    context.push(Routes.disconnect);
                  },
                  title: 'Отключить',
                ),
                SettingsItemWidget(
                  trailingText: '',
                  trailingTap: () {
                    // context.push(Routes.profileSettings);
                  },
                  title: 'Техническая поддержка Inspector',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
