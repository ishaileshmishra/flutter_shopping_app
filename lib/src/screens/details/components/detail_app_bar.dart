import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/components/text_widgets.dart';

AppBar detailAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: backNavIcon(context),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red.shade300,
              size: 30,
            )),
      ),
    ],
  );
}
