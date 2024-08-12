
import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.fillColor, required this.isSelected,
  });

  final Color fillColor ;
  final bool isSelected ;
  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2.5,
        vertical: kDefaultPadding
      ),
      padding: const EdgeInsets.all(4),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? const Color(0xff707070) : Colors.transparent,
        ),
      ),
      child: Container(
        decoration:  BoxDecoration(
          shape: BoxShape.circle ,
          color: fillColor
        ),
      ),
    );
  }
}
