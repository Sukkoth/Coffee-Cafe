import 'package:flutter/material.dart';
import 'package:coffe_shop/controllers/index_pages_controller.dart';
import 'package:coffe_shop/pages/home_pages/cart_page.dart';
import 'package:coffe_shop/pages/home_pages/favourites_page.dart';
import 'package:coffe_shop/pages/home_pages/home_page.dart';
import 'package:coffe_shop/pages/home_pages/menu_page.dart';
import 'package:coffe_shop/widgets/app_bars/home_app_bar.dart';
import 'package:coffe_shop/widgets/app_bars/app_bar.dart';
import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/home_page/drawer/drawer.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  IndexPage({super.key});

  final PageController pageController = PageController();

  final IndexPageController indexController = Get.find<IndexPageController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IndexPageController>(
      builder: (_) {
        //TODO THIS IS MESSED UP, CHANGE THIS
        // Change how you are jumping from page to page
        try {
          pageController.jumpToPage(indexController.activePageIndex);
        } catch (e) {
          debugPrint("🚀🚀 Jump to page later");
        }
        return Scaffold(
          backgroundColor: MyColors.shade2,
          drawer: const HomeDrawer(),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(vertical: 6),
            color: Colors.transparent,
            child: BottomNavigationBar(
              backgroundColor: MyColors.shade2,
              elevation: 0,
              onTap: (value) {
                indexController.setPage(value);
              },
              currentIndex: indexController.activePageIndex,
              iconSize: 30,
              selectedLabelStyle: Typo.style(
                fontSize: Typo.header6,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: Typo.style(
                fontSize: Typo.header6,
                fontWeight: FontWeight.w500,
              ),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: MyColors.primary,
              unselectedItemColor: MyColors.shade4,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_rounded),
                    label: "Favourites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard_outlined), label: "Menu"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_rounded), label: "Profile"),
              ],
            ),
          ),
          appBar: indexController.activePageIndex == 0
              ? const HomeAppBar()
              : AppAppBar() as PreferredSizeWidget,
          body: PageView(
            controller: pageController,
            onPageChanged: (value) {
              indexController.setPage(value);
            },
            children: const [
              HomePage(),
              FavouritesPage(),
              MenuPage(),
              CartPage(),
            ],
          ),
        );
      },
    );
  }
}
