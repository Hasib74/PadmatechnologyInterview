import 'package:padma_technology/AppHelper/AppConstant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceProvider {
  SharedPreferences sp;

  SharedPreferenceProvider() {
    initial();
  }

  initial() async {
    sp = await SharedPreferences.getInstance();
  }

  storeToken(token) async {
    AppConstant.current_token = token;

    sp.setString(AppConstant.token, token);
  }

  getToken() {
    return sp.get(AppConstant.token);
  }
}
