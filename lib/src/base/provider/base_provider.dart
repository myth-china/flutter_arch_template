import 'package:flutter/cupertino.dart';
import 'package:flutter_arch_template/src/base/widget/myth_loading_container.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BaseChangeNotifier extends ChangeNotifier {
  BuildContext context;
  LoadingData loadingController = LoadingData(false);
  RefreshController refreshController = RefreshController();

  int pageSize = 20;

  BaseChangeNotifier(BuildContext context) {
    this.context = context;
  }

  showLoading() {
    loadingController.show();
    notifyListeners();
  }

  hideLoading() {
    loadingController.hide();
    notifyListeners();
  }

  fastRequest(Function httpRequest) async {
    showLoading();
    dynamic ret = await httpRequest();
    hideLoading();
    return ret;
  }

  handleRefresh(isRefresh, List list, {currentController}) {
    if (currentController != null) {
      refreshController = currentController;
    }

    if (isRefresh) {
      if (list == null) {
        refreshController.refreshFailed();
        refreshController.loadNoData();
      } else {
        refreshController.refreshCompleted();
        if (list.length < pageSize) {
          refreshController.loadNoData();
        }
      }
    } else {
      if (list == null) {
        refreshController.loadFailed();
      } else {
        if (list.length == pageSize) {
          refreshController.loadComplete();
        } else {
          refreshController.loadNoData();
        }
      }
    }
  }
}
