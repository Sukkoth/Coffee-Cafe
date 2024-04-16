import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/payment_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentCardItem extends StatelessWidget {
  final String? image;
  final int index;
  final bool button;
  const PaymentCardItem({
    super.key,
    this.image,
    required this.index,
    this.button = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (index < 4) {
          Get.find<PaymentController>().setMethod(index);
        } else {
          Get.toNamed(Routes.payment.addMethod);
        }
      },
      child: GetBuilder<PaymentController>(builder: (_) {
        bool isSelected =
            Get.find<PaymentController>().selectedMethodIndex == index;
        return Container(
          height: 115,
          width: 115,
          decoration: BoxDecoration(
            color: button ? Colors.grey.shade300 : null,
            border: Border.all(
              color: isSelected ? MyColors.primary : Colors.grey.shade300,
              width: isSelected ? 2 : 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !button
                    ? Image.asset(
                        'assets/images/payment-cards/$image.png',
                        width: 70,
                        height: 50,
                        fit: BoxFit.fitHeight,
                      )
                    : const Icon(
                        Icons.add,
                      ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  Helpers.capitalizeWord(image ?? 'Add new card'),
                  style: Typo.style(
                    fontWeight: FontWeight.w700,
                    fontSize: Typo.header6,
                    color: isSelected ? MyColors.primary : MyColors.shade5,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
