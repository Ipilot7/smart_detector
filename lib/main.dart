import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_detector/common/routes.dart';
import 'package:smart_detector/common/theme.dart';
import 'package:smart_detector/di/di.dart';
import 'package:smart_detector/presentation/logic/bloc/connected_to_bloc.dart';
import 'package:smart_detector/presentation/logic/permissions/permissions_cubit.dart';
import 'package:smart_detector/presentation/logic/settings/settings_bloc.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di<PermissionsCubit>()),
        BlocProvider(create: (context) => di<SettingsBloc>()),
        BlocProvider(create: (context) => di<ConnectedToBloc>()),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter.router,
          theme: ThemeDataExt.darkTheme),
    );
  }
}
