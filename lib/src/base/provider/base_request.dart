import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/widget/myth_loading_widget.dart';

mixin BaseRequest on ChangeNotifier {
  LoadingProperty loadingProperty = LoadingProperty(false);

  showLoading() {
    loadingProperty.show();
    notifyListeners();
  }

  hideLoading() {
    loadingProperty.hide();
    notifyListeners();
  }

  doRequest(Function httpRequest) async {
    showLoading();
    dynamic ret = await httpRequest();
    hideLoading();
    return ret;
  }
}
