import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailHeader extends StatelessWidget {
  final String imageUrl;
  const ProductDetailHeader({super.key, this.imageUrl = ""});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/products/coffee.png',
          height: 450,
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: MyColors.shade1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_rounded,
                      size: 32,
                      color: MyColors.shade1,
                    )),
              )
            ],
          ),
        )
      ],
    );
  }
}
