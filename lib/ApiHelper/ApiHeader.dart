import 'package:padma_technology/AppHelper/AppConstant.dart';

class ApiHeader {
  static Map<String, String> header = {
    AppConstant.authorization: "Bearer ${AppConstant.current_token}",
  };
}
