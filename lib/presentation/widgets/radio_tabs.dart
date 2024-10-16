import 'package:flutter/material.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/extentions/extention.dart';
import 'package:smart_detector/presentation/widgets/custom_radio.dart';

enum SingingCharacter { sound, foregroundApps }

class RadioTabs extends StatefulWidget {
  const RadioTabs({super.key});

  @override
  State<RadioTabs> createState() => _RadioTabsState();
}

class _RadioTabsState extends State<RadioTabs> {
  SingingCharacter _character = SingingCharacter.sound;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            CustomRadio(
                value: SingingCharacter.foregroundApps,
                groupValue: _character,
                onChanged: (value) => setState(() {
                      _character = value;
                    })),
            8.g,
            Text(
              'Только звук',
              style: AppTextStyles.body15w5,
            ),
          ],
        ),
        16.g,
        Row(
          children: [
            CustomRadio<SingingCharacter>(
                value: SingingCharacter.foregroundApps,
                groupValue: _character,
                onChanged: (value) => setState(() {
                      _character = value;
                    })),
            8.g,
            Text(
              'Поверх других приложений',
              style: AppTextStyles.body15w5,
            ),
          ],
        ),
      ],
    );
  }
}
