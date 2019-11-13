import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/resource/colors.dart';

class SubmitButton extends StatelessWidget {
  final text;
  final onPressed;

  SubmitButton({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      height: 35.0,
      minWidth: double.infinity,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: RaisedButton(
        elevation: 0.0,
        highlightElevation: 0.0,
        color: cl_red,
        textColor: cl_white,
        disabledTextColor: cl_white,
        disabledColor: cl_grey,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
    ;
  }
}
