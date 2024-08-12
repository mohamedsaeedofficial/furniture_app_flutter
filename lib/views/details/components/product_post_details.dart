import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ProductPostDetails extends StatelessWidget {
  const ProductPostDetails({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack( 
        children: [
          Container(
            height: size.width * .7,
            width: size.width * .7,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.6),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: size.width * .75,
              width: size.width * .75,
            ),
          ),
        ],
      ),
    );
  }
}
