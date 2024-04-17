import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/models/menu_item.dart';
import 'package:coffe_shop/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  final MenuItem item;
  const ProductItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          '${Routes.product.details}/${item.id}',
        );
      },
      child: SizedBox(
        child: Column(
          children: [
            //image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/products/coffee.png',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
                Positioned(
                    top: 5,
                    right: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: MyColors.primary,
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            //title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        item.name,
                        style: Typo.style(
                          fontSize: Typo.header6,
                          fontWeight: FontWeight.w800,
                          color: MyColors.shade7,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "With Milk",
                      style: Typo.style(
                        fontSize: Typo.header7,
                        fontWeight: FontWeight.w600,
                        color: MyColors.shade4,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star_border,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.8",
                      style: Typo.style(
                        fontSize: Typo.header6,
                        fontWeight: FontWeight.w700,
                        color: MyColors.shade8,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      "(520)",
                      style: Typo.style(
                        fontSize: Typo.header7,
                        fontWeight: FontWeight.w500,
                        color: MyColors.shade4,
                      ),
                    )
                  ],
                )
              ],
            )
            //price
            ,
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${item.price.toStringAsFixed(2)}",
                  style: Typo.style(
                    fontSize: Typo.header5,
                    fontWeight: FontWeight.w700,
                    color: MyColors.shade8,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: MyColors.primary,
                    ),
                    child: Icon(
                      Icons.shopping_cart_checkout_sharp,
                      color: MyColors.shade1,
                      size: 18,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
