import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category item;
  final bool active;
  final VoidCallback onTap;
  const CategoryItem(
      {super.key,
      required this.item,
      this.active = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          right: 20,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 70,
        decoration: BoxDecoration(
          color: active ? MyColors.shade8 : null,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: active ? MyColors.shade8 : MyColors.shade4,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images${item.imageUrl}',
              height: 60,
              width: 30,
            ),
            Text(
              item.name,
              overflow: TextOverflow.ellipsis,
              style: Typo.style(
                color: active ? MyColors.shade2 : MyColors.shade5,
                fontSize: Typo.header7,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
