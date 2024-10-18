import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_detector/presentation/page/connect_to_device.dart';
import 'package:smart_detector/presentation/page/device.dart';
import 'package:smart_detector/presentation/page/home.dart';
import 'package:smart_detector/presentation/page/permissions.dart';
import 'package:smart_detector/presentation/page/search_detector.dart';
import 'package:smart_detector/presentation/page/settings/operating_mode.dart';
import 'package:smart_detector/presentation/page/settings/profile/profile.dart';
import 'package:smart_detector/presentation/page/settings/profile/profile_settings.dart';
import 'package:smart_detector/presentation/page/settings/settings.dart';
import 'package:smart_detector/presentation/page/settings/voice_kdiapazon.dart';
import 'package:smart_detector/presentation/page/settings/voice_package.dart';
import 'package:smart_detector/presentation/page/settings/voice_signature.dart';
import 'package:smart_detector/presentation/page/splash.dart';
import 'package:smart_detector/presentation/page/term_and_conditions.dart';

class Routes {
  static String get termsAndCondition => '/termsAndCondition';

  static String get permissions => '/permissions';
  static String get connectToDetector => '/connectToDetector';
  static String get searchDetector => '/searchDetector';
  static String get device => '/device';
  static String get settings => '/settings';
  static String get operatingMode => '/operatingMode';
  static String get profile => '/profile';
  static String get profileSettings => '/profileSettings';
  static String get voicePackage => '/voicePackage';
  static String get voiceSignature => '/soundsSignature';
  static String get voiceKDiapazon => '/voiceKDiapazon';
  static String get connectedTo => '/inspectorIsConnected';
  static String get firmwareUpdateStep1 => '/firmwareUpdateStep1';
  static String get firmwareUpdateStep2 => '/firmwareUpdateStep2';
  static String get firmwareUpdateStep3 => '/firmwareUpdateStep3';
  static String get disconnectAndUnlink => '/disconnectAndUnlink';
  static String get splash => '/splash';
  static String get home => '/';
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRouter {
  get router => _router;
  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.splash,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SplashPage(),
        ),
      ),
      GoRoute(
        path: Routes.termsAndCondition,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const TermsAndConditions(),
        ),
      ),
      GoRoute(
        path: Routes.home,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const HomePage(),
        ),
      ),
      GoRoute(
        path: Routes.permissions,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const PermissionsPage(),
        ),
      ),
      GoRoute(
        path: Routes.connectToDetector,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ConnnectDevicePage(),
        ),
      ),
      GoRoute(
        path: Routes.searchDetector,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SearchDetectorPage(),
        ),
      ),
      GoRoute(
        path: Routes.device,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const DevicePage(),
        ),
      ),
      GoRoute(
        path: Routes.settings,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const SettingsPage(),
        ),
      ),
      GoRoute(
        path: Routes.operatingMode,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const OperatingModePage(),
        ),
      ),
      GoRoute(
        path: Routes.profile,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ProfilePage(),
        ),
      ),
      GoRoute(
        path: Routes.profileSettings,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ProfileSettingsPage(),
        ),
      ),
      GoRoute(
        path: Routes.voicePackage,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const VoicePackagePage(),
        ),
      ),
      GoRoute(
        path: Routes.voiceKDiapazon,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const VoiceKDiapazonPage(),
        ),
      ),
      GoRoute(
        path: Routes.voiceSignature,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const VoiceSignaturePage(),
        ),
      ),
    ],
  );
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(animation);
      final slideIn = Tween<Offset>(
        begin: const Offset(0.0, 0.1),
        end: Offset.zero,
      ).animate(animation);

      return FadeTransition(
        opacity: fadeIn,
        child: SlideTransition(
          position: slideIn,
          child: child,
        ),
      );
    },
  );
}
