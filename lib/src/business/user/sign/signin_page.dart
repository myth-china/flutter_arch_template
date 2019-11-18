import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/style/margin_theme.dart';
import 'package:flutter_arch_template/src/base/style/text_theme.dart';
import 'package:flutter_arch_template/src/base/widget/myth_app_bar.dart';
import 'package:flutter_arch_template/src/base/widget/myth_button.dart';
import 'package:flutter_arch_template/src/base/widget/myth_loading_container.dart';
import 'package:flutter_arch_template/src/base/widget/myth_scaffold.dart';
import 'package:flutter_arch_template/src/business/user/sign/signin_model.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SigninModel>(
      builder: (context) => SigninModel(context),
      child: Consumer<SigninModel>(
        builder: (context, model, child) {
          return MythScaffold(
            appBar: MythAppBar(context, "登录"),
            body: LoadingContainer(
              controller: model.loadingController,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "请输入手机号",
                      style: getTextTheme(context).subhead,
                    ),
                    MarginTheme.mgNor(),
                    TextField(
                      style: getTextTheme(context).body1,
                      decoration: InputDecoration(hintText: "11位手机号"),
                      onChanged: (val) {
                        model.username = val;
                      },
                    ),
                    MarginTheme.mgNor(),
                    SubmitButton(
                      text: "登录",
                      onPressed: model.submit,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
