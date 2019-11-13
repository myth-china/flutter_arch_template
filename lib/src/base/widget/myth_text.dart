import 'package:flutter/cupertino.dart';

class EZText extends Text {
  EZText(String data, style)
      : super(
          data,
          textScaleFactor: 1.0,
          style: style,
        );

  EZText.rich(InlineSpan textSpan, style)
      : super.rich(
          textSpan,
          textScaleFactor: 1.0,
          style: style,
        );
}
