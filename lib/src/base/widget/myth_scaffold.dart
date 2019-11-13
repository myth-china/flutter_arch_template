import 'package:flutter/material.dart';

class MythScaffold extends StatelessWidget {
  final appBar;
  final body;
  final backgroundColor;
  final resizeToAvoidBottomInset;
  final bottomNavigationBar;

  final floatingActionButton;

  MythScaffold({
    this.appBar,
    this.body,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.bottomNavigationBar,
    this.floatingActionButton,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    final myData = data.copyWith(textScaleFactor: 1.0);

    return MediaQuery(
      data: myData,
      child: Scaffold(
        appBar: appBar,
        body: body,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
