import 'package:knvlpack_inventory_info/localization/app_localizations.dart';

class TranslateKey {
  static String? translate(key) => AppLocalizations.instance.translate(key);

  static String? get appName => translate('appName');


}
