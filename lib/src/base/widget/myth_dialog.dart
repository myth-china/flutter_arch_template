import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/style/margin_theme.dart';
import 'package:flutter_arch_template/src/base/style/text_theme.dart';
import 'package:flutter_arch_template/src/base/widget/myth_button.dart';
import 'package:flutter_arch_template/src/base/widget/myth_navigator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void showFlower(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return flower();
      });
}

Widget flower() {
  return Dialog(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    child: Container(
      alignment: Alignment.center,
      child: SpinKitChasingDots(
        color: Colors.blueAccent,
      ),
    ),
  );
}

showPromptDialog(
  BuildContext context,
  String title, {
  String content,
  buttonText,
  Function onConfirm,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: getTextTheme(context).headline,
              ),
              Visibility(
                visible: content != null,
                child: MarginTheme.mgSm(),
              ),
              Visibility(
                visible: content != null,
                child: Text(
                  content == null ? "" : content,
                  style: getTextTheme(context).body1,
                ),
              ),
              MarginTheme.mgNor(),
              SubmitButton(
                text: buttonText == null ? "确定" : buttonText,
                onPressed: () {
                  if (onConfirm != null) {
                    onConfirm();
                  }
                  mythPop(context);
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}

showChoiceDialog(
  BuildContext context,
  title, {
  content,
  buttonConfirm,
  buttonCancel,
  Function onConfirm,
  Function onCancel,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: getTextTheme(context).headline,
              ),
              Offstage(
                offstage: content == null,
                child: MarginTheme.mgSm(),
              ),
              Offstage(
                offstage: content == null,
                child: Text(
                  content == null ? "" : content,
                  style: getTextTheme(context).body1,
                ),
              ),
              MarginTheme.mgNor(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: SubmitButton(
                      text: buttonCancel == null ? "取消" : buttonCancel,
                      onPressed: () {
                        if (onCancel != null) {
                          onCancel();
                        }
                        mythPop(context);
                      },
                    ),
                  ),
                  MarginTheme.mgSm(),
                  Expanded(
                    child: SubmitButton(
                      text: buttonConfirm == null ? "确定" : buttonConfirm,
                      onPressed: () {
                        if (onConfirm != null) {
                          onConfirm();
                        }
                        mythPop(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
