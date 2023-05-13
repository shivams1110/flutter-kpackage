import 'package:${{{name.snakeCase()}}}/localization/app_localizations.dart';

class TranslateKey {
  static String? translate(key) => AppLocalizations.instance.translate(key);

  static String? get appName => translate('appName');


}
