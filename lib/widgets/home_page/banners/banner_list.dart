import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/home_page/banners/banner_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerList extends StatelessWidget {
  BannerList({super.key});

  final List _bannerItems = [
    {
      "title": "Coffee Bliss",
      "subtitle": "Wake up to the aroma of freshly brewed perfection!",
      "buttonText": "Explore Our Coffees",
      "imageUrl": "/banners/banner1.jpg"
    },
    {
      "title": "Juice Frenzy",
      "subtitle": "Quench your thirst with our refreshing blends!",
      "buttonText": "Discover Our Juices",
      "imageUrl": "/banners/juice.jpg"
    },
    {
      "title": "Sweet Temptations",
      "subtitle": "Indulge in heavenly cakes and pastries!",
      "buttonText": "See Our Treats",
      "imageUrl": "/banners/cake.png"
    }
  ];

  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              children: [
                HomeBannerItem(item: _bannerItems[0]),
                HomeBannerItem(item: _bannerItems[1]),
                HomeBannerItem(item: _bannerItems[2]),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: WormEffect(
                dotWidth: 10,
                dotHeight: 10,
                dotColor: MyColors.shade4,
                activeDotColor: MyColors.primary),
          )
        ],
      ),
    );
  }
}
