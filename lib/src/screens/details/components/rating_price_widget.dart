import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Row buildRowPriceRating(product) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      RatingBarIndicator(
        rating: 3.75,
        itemBuilder: (context, index) => Icon(
          Icons.star,
          //color: product.color,
        ),
        itemCount: 5,
        itemSize: 25.0,
        direction: Axis.horizontal,
      ),
      Text("Price: \$${product.price}",
          maxLines: 3,
          softWrap: true,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
    ],
  );
}
