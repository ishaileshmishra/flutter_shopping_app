import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/models/products.dart';
import 'package:flutter_shopping_app/src/screens/details/components/body.dart';
import 'package:flutter_shopping_app/src/screens/details/components/detail_app_bar.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: detailAppBar(context),
        backgroundColor: Colors.white,
        body: DetailBody(product: product));
  }
}
