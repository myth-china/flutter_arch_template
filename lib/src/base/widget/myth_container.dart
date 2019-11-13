import 'package:flutter/material.dart';

class EZContainer extends StatelessWidget {
  final child;
  final color;

  EZContainer({
    this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final myData = data.copyWith(textScaleFactor: 1.0);

    return MediaQuery(
        data: myData,
        child: Container(
          child: child,
          color: color,
        ));
  }
}
