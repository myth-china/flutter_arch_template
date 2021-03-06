import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/network/myth_response.dart';
import 'package:flutter_arch_template/src/base/provider/base_provider.dart';
import 'package:flutter_arch_template/src/base/provider/base_request.dart';
import 'package:flutter_arch_template/src/base/widget/myth_toast.dart';
import 'package:flutter_arch_template/src/business/user/user_api.dart';

class SigninModel extends BaseChangeNotifier with BaseRequest {
  UserApi _userApi = UserApi();
  String username;

  SigninModel(BuildContext context) : super(context);

  submit() async {
    MythResponse resp = await doRequest(
      () async {
        return await _userApi.signin(username);
      },
    );

    if (resp.isSuccess) {
      showShortToast("登录成功");
    }
  }
}
