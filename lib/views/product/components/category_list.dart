import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List category = ['Mohamed', 'Ahmed', 'Ali', 'Fatma'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
      ),
      // padding: EdgeInsets.only(),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
               selectedIndex = index ;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: kDefaultPadding/2,
                right: index == category.length - 1 ? kDefaultPadding : 0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                category[index],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
