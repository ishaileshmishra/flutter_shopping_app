import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/products.dart';
import 'components/body.dart';
import 'components/detail_app_bar.dart';

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
