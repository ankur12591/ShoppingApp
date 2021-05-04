import 'package:flutter/material.dart';
import 'package:shoping_app/Screens/Details/Components/buy_now.dart';
import 'package:shoping_app/Screens/Details/Components/color_and_size.dart';
import 'package:shoping_app/Screens/Details/Components/counter_with_fav.dart';
import 'package:shoping_app/models/Product.dart';

class ImageStack extends StatelessWidget {
  final Product product;

  const ImageStack({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Container(
          //margin: EdgeInsets.only(top: size.height * 0.3),
          height: MediaQuery.of(context).size.height,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              children: [
                ColorAndSize(product: product),
                SizedBox(
                  height: 30,
                ),
                Text(
                  product.description,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: 30,
                ),
                CounterWithFavButton(product: product,),
                //Container(height: 200, color: Colors.orange,)


                BuyNow(product: product,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
