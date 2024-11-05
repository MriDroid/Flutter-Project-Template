import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/injection_container.dart';
import '../../data/localization_use_case.dart';
import 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(const LocalizationState.initial());

  void getLanguageCode() {
    final response = injector<GetLanguageCodeUseCase>().call();
    response.when(
      success: (languageCode) {
        emit(LocalizationChanged(Locale(languageCode)));
      },
      failure: (error) {
        emit(
          const LocalizationError('Something went wrong! Please try again.'),
        );
      },
    );
  }

  Future<void> saveLanguageCode(String languageCode) async {
    final response =
        await injector<SaveLanguageCodeUseCase>().call(languageCode);
    response.when(
      success: (_) {
        emit(LocalizationChanged(Locale(languageCode)));
      },
      failure: (error) {
        emit(
          const LocalizationError('Something went wrong! Please try again.'),
        );
      },
    );
  }
}
