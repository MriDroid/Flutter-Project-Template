import 'package:temp/core/helpers/result.dart';

import '../../../core/services/injection_container.dart';
import 'localization_local_source.dart';

class GetLanguageCodeUseCase {
  Result<String> call() =>
      injector<LocalizationLocaleSource>().getLanguageCode();
}

class SaveLanguageCodeUseCase {
  Future<Result<bool>> call(String languageCode) =>
      injector<LocalizationLocaleSource>().saveLanguageCode(languageCode);
}
