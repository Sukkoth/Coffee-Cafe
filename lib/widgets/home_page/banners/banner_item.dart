import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class HomeBannerItem extends StatelessWidget {
  final Map item;
  const HomeBannerItem({super.key, required this.item});

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
            child: Image.asset(
              'assets/images${item["imageUrl"]}',
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item["title"],
                  style: Typo.style(
                      color: MyColors.primary,
                      fontSize: Typo.header4,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 180,
                  child: Text(
                    item["subtitle"],
                    style: Typo.style(
                      color: MyColors.shade1,
                      fontWeight: FontWeight.w500,
                      fontSize: Typo.header5,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 160,
                    height: 35,
                    decoration: BoxDecoration(
                      color: MyColors.shade3,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        item["buttonText"],
                        style: Typo.style(
                          fontWeight: FontWeight.w600,
                          color: MyColors.shade8,
                          fontSize: Typo.header6,
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
