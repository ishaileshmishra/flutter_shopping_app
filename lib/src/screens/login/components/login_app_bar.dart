import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/components/text_widgets.dart';

AppBar buildLoginAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: backNavIcon(context),
    actions: [],
  );
}
