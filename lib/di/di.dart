import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smart_detector/common/locale_data/hive_keys.dart';
import 'package:smart_detector/common/locale_data/locale_model.dart';
import 'package:smart_detector/presentation/logic/bloc/settings_bloc.dart';
import 'package:smart_detector/presentation/logic/permissions/permissions_cubit.dart';

final di = GetIt.instance;

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);

  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter<LocaleModel>(LocaleModelAdapter());
  }
  await Hive.openBox<LocaleModel>(HiveKey.token);

  // Alice alice = Alice(
  //   navigatorKey: rootNavigatorKey,
  //   showNotification: true,
  //   showInspectorOnShake: true,
  // );
  // di.registerLazySingleton(() => alice);

//Blocs
  di.registerFactory(() => PermissionsCubit());
  di.registerFactory(() => SettingsBloc());

//UseCases
  // di.registerLazySingleton(() => LoginUseCase(repository: di()));

  ///Repository

  // di.registerFactory<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     remoteDataSourceImpl: di(),
  //     localeDataSourceImpl: di(),
  //   ),
  // );

  /// DataSource

  // di.registerLazySingleton<AuthRemoteDataSourceImpl>(
  //     () => AuthRemoteDataSourceImpl(dio: di()));

  /// Network
  // var options = BaseOptions(
  //   baseUrl: "https://bildung.uz/",
  //   headers: {
  //     'accept': 'application/json',
  //     'Content-Type': 'application/json',
  //     'X-CSRFTOKEN':
  //         'dUkBIAJNEj6wToR3MRzdJbH5Mcp0EEB78KtI4aUjaYa0IPo60pHkQbh9nYXvpc72',
  //   },
  // );
  // final dio = Dio(options);

  // dio.interceptors.add(InterceptorsWrapper(
  //   onRequest: (options, handler) async {
  //     Future<LocaleModel?> datas =
  //         HiveUtils.getDataByKey<LocaleModel>(HiveKey.token, HiveKey.token);
  //     LocaleModel? localeData = await datas;

  //     if (localeData?.accessToken != null) {
  //       options.headers['Authorization'] = 'Bearer ${localeData?.accessToken}';
  //     }
  //     return handler.next(options); // продолжает запрос
  //   },
  //   onError: (DioException error, handler) {
  //     // Можно обработать ошибки (например, если токен устарел)
  //     return handler.next(error); // продолжает ошибку
  //   },
  // ));

  // dio.interceptors.add(alice.getDioInterceptor());

  // di.registerSingleton<Dio>(dio);
  // dio.interceptors.add(PrettyDioLogger(
  //     requestHeader: true,
  //     requestBody: true,
  //     responseBody: true,
  //     responseHeader: false,
  //     error: true,
  //     compact: true,
  //     maxWidth: 90));
}
