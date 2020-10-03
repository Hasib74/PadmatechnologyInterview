import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:padma_technology/ApiHelper/ApiHeader.dart';
import 'package:padma_technology/ApiHelper/ApiUrl.dart';
import 'package:padma_technology/Model/User.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  User _user;

  User get user => _user;

  getUser() {
    print(ApiHeader.header);

    try {
      http.get(ApiUrl.get_user, headers: ApiHeader.header).then((value) {
        if (value.statusCode == 200) {
          print(value.body);

          User user = User.fromJson(json.decode(value.body));

          print("Data is ${user.data.length}");
          currentUser(user);

          // loadingStatus(false);
        }
      });
    } catch (err) {
      print(err);
    }
  }

  currentUser(user) {
    _user = user;

    print("Data is ${_user.data.length}");

    notifyListeners();
  }
}
