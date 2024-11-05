import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
  TextTheme get textTheme => Theme.of(this).textTheme;
  String get currentLocaleCode => Localizations.localeOf(this).languageCode;
  Locale get currentLocale => Localizations.localeOf(this);
}
