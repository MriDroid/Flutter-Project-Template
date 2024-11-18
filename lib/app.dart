import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'config/router/app_router.dart';
import 'core/services/injection_container.dart';
import 'core/theme/app_theme.dart';
import 'src/localization/presentation/cubit/localization_cubit.dart';
import 'src/localization/presentation/cubit/localization_state.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => injector<LocalizationCubit>()..getLanguageCode(),
        child: BlocBuilder<LocalizationCubit, LocalizationState>(
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.maybeWhen(
                changed: (locale) => locale,
                orElse: () => const Locale('en'),
              ),
              theme: appTheme(),
              routerConfig: injector<AppRouter>().config(),
              builder: EasyLoading.init(),
            );
          },
        ),
      ),
    );
  }
}
