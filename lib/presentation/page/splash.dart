import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/common/assets.gen.dart';
import 'package:smart_detector/common/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(Routes.termsAndCondition);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Assets.images.smartDetectorLogo.image()),
    );
  }
}
