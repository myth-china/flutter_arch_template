import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> mythPush(
  BuildContext context,
  Widget widget, {
  name,
}) {
  return Navigator.of(context).push(
    CupertinoPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(
        name: name,
      ),
    ),
  );
}

mythPushAndRemove(BuildContext context, Widget widget) {
  return Navigator.of(context).pushAndRemoveUntil(
      CupertinoPageRoute(builder: (context) => widget),
      ModalRoute.withName('/'));
}

mythPushAndRemoveAll(
  BuildContext context,
  Widget widget,
) {
  return Navigator.of(context).pushAndRemoveUntil(
    CupertinoPageRoute(builder: (context) => widget),
    (Route route) {
      return false;
    },
  );
}

mythPop(BuildContext context, {result}) {
  if (result == null) {
    return Navigator.pop(context);
  } else {
    return Navigator.of(context).pop(result);
  }
}

mythPopUntil(BuildContext context, name) {
  return Navigator.of(context).popUntil(ModalRoute.withName(name));
}
