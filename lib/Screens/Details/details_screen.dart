import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/Screens/Details/Components/image_stack.dart';
import 'package:shoping_app/Screens/Details/Components/productTitle_with_image.dart';
import 'package:shoping_app/constants.dart';
import 'package:shoping_app/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({this.product});

  // const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(""),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                // color: kTextColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                //color: kTextColor,
              ),
              onPressed: () {}),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Stack(
          children: [
            Container(

              height: 730,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleWithImage(product: product),
                  //Container(height: 600, color: Colors.orange,),
                  ImageStack(product: product,),
                ],
              ),
            ),
            Positioned(
              child: Container(
                  height: 250, width: 300, child: Image.asset(product.image)),
              top: 60,
              right: -20,
            ),
          ],
        ),
      )),
    );
  }
}
