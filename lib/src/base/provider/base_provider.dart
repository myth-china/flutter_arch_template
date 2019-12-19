import 'package:flutter/cupertino.dart';

class BaseChangeNotifier extends ChangeNotifier {
  BuildContext context;

  BaseChangeNotifier(BuildContext context) {
    this.context = context;
  }
}
