import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/components/text_widgets.dart';

Hero buildHeroThumbnail(profileThumb) {
  return Hero(
    tag: "userThumbnail",
    child: Center(
      child: CircleAvatar(
        radius: 60.0,
        backgroundImage: NetworkImage(profileThumb),
        backgroundColor: Colors.transparent,
      ),
    ),
  );
}

Center buildSkipBtn() {
  return Center(
    child: Text(
      'Skip Now.',
      style: smallText,
    ),
  );
}

ElevatedButton buildLoginButton() {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(8.0),
        ),
      ),
      child: Container(
          padding: EdgeInsets.all(12),
          width: double.infinity,
          child: Center(
              child: Text("Login",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )))));
}

Row buildRowForgotPassword() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Don't have an account? ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          )),
      Text(
        'Register.',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Text buildRowCreateNew() {
  return Text(
    'Welcome back.\nYou have been missed!',
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.normal,
    ),
  );
}

SizedBox buildTextLoginNow() {
  return SizedBox(
    width: 250.0,
    child: AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText("Let's sign you in",
            textStyle: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
                fontSize: 35)),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  );

  //   Text(
  //   "Let's sign you in.",
  //   style: TextStyle(
  //   fontSize: 25,
  //   fontWeight: FontWeight.bold,
  // ),
  // );
}
