import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  late Locale locale;
  static late AppLocalizations instance;

  late Map<String, String> _sentences;

  AppLocalizations({required this.locale}) {
    instance = this;
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }

  Future<bool> load() async {
    String data = await rootBundle.loadString(
        'packages/${{{name.snakeCase()}}}/assets/lang/${this.locale.languageCode}.json');
    Map<String, dynamic> _result = json.decode(data);

    this._sentences = new Map();
    _result.forEach((String key, dynamic value) {
      this._sentences[key] = value.toString();
    });

    return true;
  }

  String? translate(String key) {
    return this._sentences[key];
  }
}
