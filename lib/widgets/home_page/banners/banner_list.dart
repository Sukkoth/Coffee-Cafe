import 'package:coffe_shop/widgets/home_page/banners/banner_item.dart';
import 'package:flutter/material.dart';

class BannerList extends StatelessWidget {
  const BannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          HomeBannerItem(),
          HomeBannerItem(),
          HomeBannerItem(),
        ],
      ),
    );
  }
}
