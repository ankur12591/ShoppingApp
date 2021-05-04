import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;

  const ProductTitleWithImage({this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //color: Colors.orange,
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aristocratic Hand Bag",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 100,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
