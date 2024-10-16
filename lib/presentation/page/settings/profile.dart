import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/components/custom_appbar.dart';
import 'package:smart_detector/common/components/textx.dart';
import 'package:smart_detector/common/enums/profile_status.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/logic/bloc/settings_bloc.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: "Профиль"),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: ProfileStatus.values.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  CustomRadio(
                      value: ProfileStatus.values[index],
                      onChanged: (value) {
                        context
                            .read<SettingsBloc>()
                            .add(ChangeProfileEvent(value));
                      },
                      groupValue: state.profileStatus),
                  8.g,
                  TextX(ProfileStatus.values[index].name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
