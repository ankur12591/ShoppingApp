import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoping_app/Screens/Componants/categories.dart';
import 'package:shoping_app/Screens/Componants/item_card.dart';
import 'package:shoping_app/Screens/Details/details_screen.dart';
import 'package:shoping_app/constants.dart';
import 'package:shoping_app/models/Product.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
        ),
        title: Text(""),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: kTextColor,
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: kTextColor,
              ),
              onPressed: () {}),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
