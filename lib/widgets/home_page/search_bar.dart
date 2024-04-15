import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(color: MyColors.shade8),
      child: SearchBar(
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20)),
        backgroundColor: MaterialStatePropertyAll(MyColors.shade7),
        leading: Icon(
          Icons.search,
          color: MyColors.shade4,
          size: 34,
        ),
        hintText: "Search Coffee",
        textStyle: MaterialStatePropertyAll(Typo.style(
          fontSize: Typo.header5,
          fontWeight: FontWeight.w500,
          color: MyColors.shade3,
        )),
        hintStyle: MaterialStatePropertyAll(
          Typo.style(
            fontSize: Typo.header5,
            fontWeight: FontWeight.w500,
            color: MyColors.shade4,
          ),
        ),
      ),
    );
  }
}
