import 'package:flutter_arch_template/src/base/network/myth_dio.dart';

class UserApi {
  MythDio _dio = MythDio();

  signin(username) {
    return _dio.get("/signin", params: {"username": username});
  }
}
