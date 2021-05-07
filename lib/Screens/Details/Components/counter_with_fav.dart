import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping_app/Screens/Details/Components/cart_counter.dart';
import 'package:shoping_app/models/Product.dart';

class CounterWithFavButton extends StatelessWidget {
  final Product product;

  const CounterWithFavButton({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
     // width: 30,
    //  color: Colors.orange,
      child: Row(
        children: [
          CartCounter(),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            height: 30,
            width: 30,
            decoration:
                BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle),
            child: SvgPicture.asset("assets/icons/heart.svg"),
          )
        ],
      ),
    );
  }
}
