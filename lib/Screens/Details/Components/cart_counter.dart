import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
          child: Container(
            //color: Colors.orange,
            padding: const EdgeInsets.all(0),
            height: 25,
            width: 30,
            child: OutlineButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.black),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              numOfItems++;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(0),
            height: 25,
            width: 30,
            child: OutlineButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
