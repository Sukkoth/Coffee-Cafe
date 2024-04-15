import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.shade8,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome!",
            style: Typo.style(
                fontSize: Typo.header5,
                color: MyColors.shade4,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Hi, Sukkoth!",
            style: Typo.style(fontSize: Typo.header7, color: MyColors.shade4),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined),
        )
      ],
    );
  }
}
