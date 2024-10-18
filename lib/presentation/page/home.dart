import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/app_text_style.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/constants.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/presentation/widgets/signal_speedometr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Assets.images.inspector.image(),
          ),
          const Center(
            child: SignalSpeedometer(
              speed: 110,
              signalLevel: 8, // Уровень сигнала (0 не красится)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "СМАРТ",
              style: AppTextStyles.body30w5.copyWith(color: AppColors.grey),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            homeIcons.length,
            (index) => GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    context.push(Routes.settings);
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: index == 1 ? 90 : 65,
                height: index == 1 ? 90 : 65,
                decoration: const BoxDecoration(
                    color: AppColors.grey, shape: BoxShape.circle),
                child: homeIcons[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
