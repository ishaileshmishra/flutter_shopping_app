import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/screens/cart/components/cart_body.dart';

import 'components/action_bat_cart.dart';

class ProductCart extends StatefulWidget {
  ProductCart({Key key}) : super(key: key);

  @override
  _ProductCartState createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCartAppBar(context),
      body: CartBody(),
    );
  }
}
