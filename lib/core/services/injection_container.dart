import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:temp/src/auth/data/repository/user_repository.dart';
import 'package:temp/src/auth/presentation/cubit/auth_cubit.dart';

import '../../config/router/app_router.dart';
import '../../src/localization/data/localization_local_source.dart';
import '../../src/localization/data/localization_use_case.dart';
import '../../src/localization/presentation/cubit/localization_cubit.dart';
import '../api/api_service.dart';
import '../api/dio_factory.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  // Auth
  injector.registerLazySingleton(() => AuthRepository(injector()));
  injector.registerFactory(() => AuthCubit(injector()));

  // Routes
  final appRouter = AppRouter();
  injector.registerLazySingleton<AppRouter>(() => appRouter);

  // SharedPreferences
  final sp = await SharedPreferences.getInstance();
  injector.registerLazySingleton<SharedPreferences>(() => sp);

  // Localization
  injector.registerLazySingleton(() => LocalizationCubit());
  injector.registerLazySingleton<LocalizationLocaleSource>(
      () => LocalizationLocaleSourceImpl());
  injector.registerLazySingleton<GetLanguageCodeUseCase>(
      () => GetLanguageCodeUseCase());
  injector.registerLazySingleton<SaveLanguageCodeUseCase>(
      () => SaveLanguageCodeUseCase());

  // Dio & ApiService
  Dio dio = DioFactory.instance;
  injector.registerLazySingleton<ApiService>(() => ApiService(dio));
}
