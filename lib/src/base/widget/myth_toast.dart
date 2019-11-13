import 'package:fluttertoast/fluttertoast.dart';

showShortToast(msg) {
  showToast(
    msg,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIos: 2,
  );
}

showLongToast(msg) {
  showToast(
    msg,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIos: 4,
  );
}

showToast(
  msg, {
  toastLength = Toast.LENGTH_SHORT,
  timeInSecForIos = 2,
}) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: toastLength,
    timeInSecForIos: timeInSecForIos,
    gravity: ToastGravity.CENTER,
  );
}
