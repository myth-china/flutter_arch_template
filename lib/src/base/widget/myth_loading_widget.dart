import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingCover extends StatelessWidget {
  LoadingCover({
    this.property,
    this.child,
    this.scrollable = false,
    this.usePadding = true,
    this.paddingTop = 30,
  });

  final LoadingProperty property;
  final Widget child;
  final bool scrollable;
  final bool usePadding;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        scrollable
            ? SingleChildScrollView(
                child: _buildChild(child),
              )
            : _buildChild(child),
        Visibility(
            visible: property._showFlag,
            child: Container(
                height: double.infinity,
                color: Colors.black54,
                child: SpinKitChasingDots(
                  color: Colors.blue,
                ))),
      ],
    );
  }

  Widget _buildChild(child) {
    return Padding(
      padding: usePadding
          ? const EdgeInsets.only(
              left: 20.0,
              top: 30.0,
              right: 20.0,
            )
          : const EdgeInsets.all(0.0),
      child: child,
    );
  }
}

class LoadingReplace extends StatelessWidget {
  LoadingReplace({this.property, this.child});

  final LoadingProperty property;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return property._showFlag
        ? Container(
            child: SpinKitChasingDots(
            color: Colors.blue,
          ))
        : Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
              right: 20.0,
              bottom: 20.0,
            ),
            child: child,
          );
  }
}

class LoadingProperty {
  LoadingProperty(this._showFlag);

  bool _showFlag = false;

  void show() {
    _showFlag = true;
  }

  void hide() {
    _showFlag = false;
  }
}
