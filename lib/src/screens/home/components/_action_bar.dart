import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../cart/cart_screen.dart';
import '../../login/login_screen.dart';
import '../../notification/notification.dart';

AppBar homeActionBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child: Hero(
            tag: "userThumbnail",
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(profileThumb),
              backgroundColor: Colors.transparent,
            )),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Buy. Think. Grow',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          Text(
            'A few clicks is all it takes.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.indigo),
          )
        ],
      ),
    ),
    centerTitle: false,
    actions: [
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            child:
                Icon(CupertinoIcons.bell, size: 30, color: Colors.deepPurple),
          )),
      Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductCart()),
              );
            },
            child:
                Icon(CupertinoIcons.cart, size: 30, color: Colors.deepPurple),
          )),
      //Icon(CupertinoIcons.search, size: 30, color: Colors.indigoAccent)
    ],
  );
}
