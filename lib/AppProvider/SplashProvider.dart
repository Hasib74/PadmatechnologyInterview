import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:padma_technology/AppHelper/AppConstant.dart';
import 'package:padma_technology/AppProvider/SharedPreferenceProvider.dart';
import 'package:padma_technology/Route/Route.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class SplashProvider with ChangeNotifier {
  BuildContext context;

  SplashProvider() {
    SharedPreferences.getInstance().then((pr) {
      prefs = pr;
    });

    setAppData();
  }

  void setView(BuildContext context) => this.context = context;

  startTime() async {
    var _duration = Duration(seconds: 5);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    //  SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    String token = prefs.get(AppConstant.token);

    if (token.isEmpty) {
      Navigator.of(context).pushReplacementNamed(LOG_IN);
    } else {
      AppConstant.current_token = token;
      Navigator.of(context).pushReplacementNamed(HOME);
    }
  }

  void setAppData() {
    startTime();
  }
}
