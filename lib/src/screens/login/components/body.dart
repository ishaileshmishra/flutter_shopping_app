import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constants.dart';
import 'package:flutter_shopping_app/src/screens/login/components/textfield_decoration.dart';
import 'package:flutter_shopping_app/src/screens/login/components/widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(40.0),
      children: [
        buildHeroThumbnail(profileThumb),
        SizedBox(height: 20),
        buildTextLoginNow(),
        SizedBox(height: 20),
        buildRowCreateNew(),
        SizedBox(height: 20),
        emailField,
        SizedBox(height: 20),
        passwordField,
        SizedBox(height: 40),
        buildRowForgotPassword(),
        SizedBox(height: 10),
        buildLoginButton(),
      ],
    );
  }
}
