import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/views/details/components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: DetailsBody(
        product: productModel,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      title: Text(
        'back'.toUpperCase(),
        style: const TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
        )
      ],
      elevation: 0,
    );
  }
}
