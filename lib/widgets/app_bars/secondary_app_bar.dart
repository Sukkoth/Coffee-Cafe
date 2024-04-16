import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/index_pages_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  SecondaryAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final IndexPageController indexController = Get.find<IndexPageController>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_rounded,
          color: MyColors.shade6,
        ),
      ),
      backgroundColor: MyColors.shade2,
      shadowColor: MyColors.shade1,
      centerTitle: true,
      title: Text(
        title,
        style: Typo.style(
          fontSize: Typo.header5,
          color: MyColors.shade7,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none,
            color: MyColors.shade6,
          ),
        ),
      ],
    );
  }
}
