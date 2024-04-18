import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/index_pages_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  AppAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final IndexPageController indexController = Get.find<IndexPageController>();

  final Map _appBarTitle = {
    0: "Home",
    1: "Favourites",
    2: "Menu",
    3: "Cart",
  };

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.shade8,
      elevation: 0,
      centerTitle: true,
      title: Text(
        _appBarTitle[indexController.activePageIndex],
        style: Typo.style(
            fontSize: Typo.header4,
            color: MyColors.shade4,
            fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
          ),
        )
      ],
    );
  }
}
