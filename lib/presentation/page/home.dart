import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/appcolors.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/constants.dart';
import 'package:smart_detector/common/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Assets.images.inspector.image()],
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
