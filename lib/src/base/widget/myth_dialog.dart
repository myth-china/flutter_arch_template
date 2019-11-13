import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/style/sized_box.dart';
import 'package:flutter_arch_template/src/base/style/text_style.dart';
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
                style: textStyleTitle1(),
              ),
              Visibility(
                visible: content != null,
                child: boxSm(),
              ),
              Visibility(
                visible: content != null,
                child: Text(
                  content == null ? "" : content,
                  style: textStyleSm(),
                ),
              ),
              boxNor(),
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
                style: textStyleTitle1(),
              ),
              Offstage(
                offstage: content == null,
                child: boxSm(),
              ),
              Offstage(
                offstage: content == null,
                child: Text(
                  content == null ? "" : content,
                  style: textStyleSm(),
                ),
              ),
              boxNor(),
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
                  boxSm(),
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
