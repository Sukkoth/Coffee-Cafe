import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/models/cart.dart';
import 'package:flutter/material.dart';

class CartItemDetails extends StatelessWidget {
  final Cart item;
  const CartItemDetails({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Regular",
                    style: Typo.style(
                      color: MyColors.shade4,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      item.menuItem.name,
                      overflow: TextOverflow.ellipsis,
                      style: Typo.style(
                        fontSize: Typo.header4,
                        color: MyColors.shade7,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      "With steamed milk, chocolate",
                      style: Typo.style(
                        color: MyColors.shade4,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              //x button
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel_outlined,
                  color: MyColors.shade5,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //price
              Text(
                "\$${item.menuItem.price.toStringAsFixed(2)}",
                style: Typo.style(
                  fontSize: Typo.header4,
                  color: MyColors.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: MyColors.shade4,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.remove,
                        size: 20,
                        color: MyColors.shade4,
                      ),
                    ),
                    Text(
                      "1",
                      style: Typo.style(
                        fontSize: Typo.header5,
                        color: MyColors.shade4,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: MyColors.shade4,
                      ),
                    ),
                  ],
                ),
              )
              //button
            ],
          )
        ],
      ),
    );
  }
}
