import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:padma_technology/ApiHelper/ApiFiled.dart';
import 'package:padma_technology/ApiHelper/ApiUrl.dart';
import 'package:padma_technology/AppProvider/SharedPreferenceProvider.dart';
import 'package:padma_technology/Model/LogIn.dart';
import 'package:padma_technology/Route/Route.dart';

class CredentialProvider extends ChangeNotifier {
  BuildContext context;

  bool _loading = false;

  bool get loading => _loading;

  setContext(c) {
    context = c;
    _loading = false;
  }

  SharedPreferenceProvider sharedPreferenceProvider =
      new SharedPreferenceProvider();

  logInProvider(String email, String password) {
    loadingStatus(true);

    LogIn logIn;

    Map body = {ApiFiled.email: email, ApiFiled.password: password};

    http
        .post(
      ApiUrl.logIn,
      body: body,
    )
        .then((value) {
      if (value.statusCode == 200) {
        logIn = LogIn.fromJson(json.decode(value.body));
        sharedPreferenceProvider.storeToken(logIn.token);
        loadingStatus(false);

        Navigator.of(context).pushNamed(HOME);
      } else {
        loadingStatus(false);
      }

      print(value.body);
    }).catchError((err) => print(err));
  }

  loadingStatus(bool isLoading) {
    _loading = isLoading;

    notifyListeners();
  }
}
