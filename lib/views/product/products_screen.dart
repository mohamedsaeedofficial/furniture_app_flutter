import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/views/product/components/product_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: const ProductBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text('Dashboard'),
      centerTitle: false,
      elevation: 0,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/notification.svg'))
      ],
    );
  }
}
