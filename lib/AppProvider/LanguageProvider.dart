import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppConstant.dart';
import 'package:padma_technology/Language/BN.dart';
import 'package:padma_technology/Language/EN.dart';
import '../main.dart';



enum AppLocale {
  EN,
  BN
}

class LocaleHelper{

  static getAllLocale(){
    return [
      Locale('en', 'US'),
      Locale('bn', 'BN'),
    ];
  }

  static String getKey(AppLocale locale){
    switch(locale){
      case AppLocale.EN:
        return "en";
      case AppLocale.BN:
        return "bn";
      default:
        return AppConstant.Default_Language;
    }
  }

  static AppLocale getLocale(String key){
    switch(key){
      case "en":
        return AppLocale.EN;
      case "bn":
        return AppLocale.BN;
      default:
        return AppConstant.Default_Locale;
    }
  }

  static setLanguage(AppLocale locale){
    switch(locale){
      case AppLocale.EN:
        EN();
        return null;
      case AppLocale.BN:
        BN();
        return null;
      default:
        AppConstant.Default_Language_Function;
        return null;
    }
  }
}
class AppLanguage extends ChangeNotifier {
  String appLocale = AppConstant.Default_Language;
  AppLocale mainLocale = AppConstant.Default_Locale;
  void changeLanguage(String key) async {
    appLocale=key;
    mainLocale=LocaleHelper.getLocale(key);
    notifyListeners();
  }
}
