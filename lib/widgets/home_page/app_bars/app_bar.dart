import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.shade8,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: Typo.style(
            fontSize: Typo.header4,
            color: MyColors.shade4,
            fontWeight: FontWeight.w600),
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
