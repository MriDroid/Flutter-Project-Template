import 'package:temp/core/helpers/result.dart';
import 'package:temp/core/helpers/shared_preferences_helper.dart';

import '../../../core/error/error_handler.dart';

abstract class LocalizationLocaleSource {
  Result<String> getLanguageCode();
  Future<Result<bool>> saveLanguageCode(String languageCode);
}

class LocalizationLocaleSourceImpl implements LocalizationLocaleSource {
  @override
  Result<String> getLanguageCode() {
    return errorHandler<String>(
      () => SharedPreferencesHelper.containsKey('locale')
          ? SharedPreferencesHelper.get<String>('locale')
          : 'en',
    );
  }

  @override
  Future<Result<bool>> saveLanguageCode(String languageCode) async {
    return await errorHandlerAsync<bool>(
      () async =>
          await SharedPreferencesHelper.set<String>('locale', languageCode),
    );
  }
}
