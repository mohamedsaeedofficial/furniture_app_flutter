import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product_model.dart';
import 'package:furniture_app/views/details/details_screen.dart';
import 'package:furniture_app/views/product/components/category_list.dart';
import 'package:furniture_app/views/product/components/product_card.dart';
import 'package:furniture_app/components/search_box.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SearchBox(),
          const CategoryList(),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>  DetailsScreen(productModel:  products[index] ,),
                        ));
                      },
                      itemIndex: index,
                      product: products[index],
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
