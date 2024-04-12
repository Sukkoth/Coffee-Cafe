import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/home_page/drawer/header.dart';
import 'package:coffe_shop/widgets/home_page/drawer/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: CDrawerHeader(),
          ),
          Expanded(child: MenuList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: GestureDetector(
              onTap: () {
                Get.find<AuthController>().logoutUser();
                Get.offNamedUntil(
                    Routes.login, (route) => Get.currentRoute == Routes.login);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: MyColors.primary,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Logout",
                    style: Typo.style(
                        color: MyColors.primary,
                        fontWeight: FontWeight.w700,
                        fontSize: Typo.header5),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
