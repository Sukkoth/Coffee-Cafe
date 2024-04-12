import 'package:flutter/material.dart';

class HomeBannerItem extends StatelessWidget {
  const HomeBannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Colors.amber,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/banners/banner1.jpg'),
          ),
          // Text("Hello there")
        ],
      ),
    );
  }
}
