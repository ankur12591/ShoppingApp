import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
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
        ),
      ),
    );
  }
}
