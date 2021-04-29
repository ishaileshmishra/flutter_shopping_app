import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/screens/details/details_screen.dart';

GridView buildProductGridView(BuildContext context, List<dynamic> products) {
  var orientation = MediaQuery.of(context).orientation;
  return GridView.builder(
    itemCount: products.length,
    padding: EdgeInsets.only(top: 0),
    reverse: false,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetail(
                        product: products[index],
                      ))),
        },
        child: gridCardItem(context, products[index]),
      );
    },
  );
}

Card gridCardItem(context, item) {
  return Card(
    elevation: 2,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(
                      product: item,
                    )));
      },
      child: new GridTile(
        footer: Container(
          color: Colors.grey.shade200,
          child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                item.title,
                maxLines: 1,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )),
        ),
        child: Hero(
          tag: item.id,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.network(
              item.image,
              fit: BoxFit.contain,
            ),
          ),
        ), //just for testing, will fill with image later
      ),
    ),
  );
}
