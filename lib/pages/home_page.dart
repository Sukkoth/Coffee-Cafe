import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/home_page/banners/banner_list.dart';
import 'package:coffe_shop/widgets/home_page/drawer/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
            ),
            const SizedBox(
              height: 20,
            ),
            BannerList()
          ],
        ),
      ),
    );
  }
}
