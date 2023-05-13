import 'dart:async';

import 'package:flutter/material.dart';
import 'package:${{{name.snakeCase()}}}/localization/app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale: locale);
    await localizations.load();

    // print("Load ${locale.languageCode}");

    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
