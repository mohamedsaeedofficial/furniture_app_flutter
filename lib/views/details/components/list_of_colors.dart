import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/views/details/components/color_dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorDot(
          fillColor: Color(0xff80989A),
          isSelected: true,
        ),
        ColorDot(
          fillColor: Colors.redAccent,
          isSelected: false,
        ),
        ColorDot(
          fillColor: kPrimaryColor,
          isSelected: false,
        ),
      ],
    );
  }
}
