import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/product/product_item.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: Typo.style(
                  fontSize: Typo.header3,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          debugPrint("🚀🚀 Navigate to menu");
                        },
                        style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                            EdgeInsets.zero,
                          ),
                        ),
                        child: Text(
                          "View all",
                          style: Typo.style(
                            color: MyColors.primary,
                            fontSize: Typo.header6,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: MyColors.primary,
                      )
                    ],
                  ))
            ],
          ),
          GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                mainAxisExtent: 300,
              ),
              itemBuilder: (context, index) {
                return const ProductItem();
              })
        ],
      ),
    );
  }
}
