import 'package:pull_to_refresh/pull_to_refresh.dart';

mixin BaseRefresh {
  RefreshController refreshController;
  int pageSize = 20;

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
