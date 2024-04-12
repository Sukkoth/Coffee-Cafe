import 'package:coffe_shop/widgets/home_page/drawer/menu_item.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  MenuList({super.key});

  final List<Map<String, dynamic>> _menuList = [
    {
      "text": "My Profile",
      "icon": Icons.person,
      "linkTo": '/profile',
    },
    {
      "text": "Vouchers & Offer",
      "icon": Icons.local_offer,
      "linkTo": '/vouchers',
    },
    {
      "text": "Rewards",
      "icon": Icons.card_giftcard,
      "linkTo": '/rewards',
    },
    {
      "text": "Favourites",
      "icon": Icons.favorite,
      "linkTo": '/favourites',
    },
    {
      "text": "Order History",
      "icon": Icons.history,
      "linkTo": '/order-history',
    },
    {
      "text": "Payment methods",
      "icon": Icons.payment,
      "linkTo": '/payment-methods',
    },
    {
      "text": "Addresses",
      "icon": Icons.location_on,
      "linkTo": '/addresses',
    },
    {
      "text": "Message",
      "icon": Icons.message,
      "linkTo": '/message',
    },
    {
      "text": "Help Center",
      "icon": Icons.help,
      "linkTo": '/help-center',
    },
    {
      "text": "Terms & Conditions",
      "icon": Icons.description,
      "linkTo": '/terms-conditions',
    },
    {
      "text": "Settings",
      "icon": Icons.settings,
      "linkTo": '/settings',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: ListView.builder(
          itemCount: _menuList.length,
          itemBuilder: (context, index) {
            return DrawerMenuItem(
              icon: _menuList[index]["icon"],
              text: _menuList[index]["text"],
              linkTo: _menuList[index]["linkTo"],
            );
          }),
    );
  }
}
