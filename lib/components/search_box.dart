import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key, this.onChanged,
  });

  final void Function(String)? onChanged ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/4
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(.4)
      ),
      child: TextField(
        onChanged: onChanged ,
        decoration: InputDecoration(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search',
          hintStyle: const TextStyle(color: Colors.white)
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
