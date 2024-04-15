import 'package:coffe_shop/pages/home_pages/cart_page.dart';
import 'package:coffe_shop/pages/home_pages/favourites_page.dart';
import 'package:coffe_shop/pages/home_pages/home_page.dart';
import 'package:coffe_shop/pages/home_pages/menu_page.dart';
import 'package:coffe_shop/widgets/home_page/app_bars/home_app_bar.dart';
import 'package:coffe_shop/widgets/home_page/app_bars/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/home_page/drawer/drawer.dart';
import 'package:get/get.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  PageController pageController = PageController();
  int _activePageIndex = 0;

  final Map _appBarTitle = {
    0: "Home",
    1: "Favourites",
    2: "Menu",
    3: "Cart",
  };

  void _changeScreen(int index, [bool isFromNav = false]) {
    if (index < 4) {
      setState(() {
        if (isFromNav) pageController.jumpToPage(index);
        _activePageIndex = index;
      });
    } else if (index == 4) {
      Get.toNamed('/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          _changeScreen(value, true);
        },
        currentIndex: _activePageIndex,
        iconSize: 32,
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
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_rounded), label: "Favourites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined), label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: "Profile"),
        ],
      ),
      appBar: _activePageIndex == 0
          ? const HomeAppBar()
          : AppAppBar(title: _appBarTitle[_activePageIndex])
              as PreferredSizeWidget,
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          _changeScreen(value);
        },
        children: const [
          HomePage(),
          FavouritesPage(),
          MenuPage(),
          CartPage(),
        ],
      ),
    );
  }
}
