import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingContainer extends StatelessWidget {
  LoadingContainer({
    this.controller,
    this.child,
  });

  final LoadingData controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Offstage(
          offstage: !controller.isShowing,
          child: Container(
            height: double.infinity,
            color: Colors.black54,
            child: SpinKitChasingDots(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildChild(child) {
    return child;
  }
}

class LoadingData {
  LoadingData(this._showFlag);

  bool _showFlag = false;

  void show() {
    _showFlag = true;
  }

  void hide() {
    _showFlag = false;
  }

  get isShowing {
    return _showFlag;
  }
}
