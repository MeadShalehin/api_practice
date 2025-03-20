import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController {
  Locale _locale = const Locale('en', 'US');

  Locale get locale => _locale;

  void changeLanguage(String langCode, String countryCode) {
    _locale = Locale(langCode, countryCode);
    update();
  }

  static Future<Map<String, Map<String, String>>> getLanguages() async {
    return {
      'en_US': {
        'hello': 'Hello',
      },
      'bn_BD': {
        'hello': 'হ্যালো',
      },
    };
  }
}
