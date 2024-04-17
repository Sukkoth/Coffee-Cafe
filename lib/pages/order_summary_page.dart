import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/app_bars/secondary_app_bar.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/order_summary/deliver_to.dart';
import 'package:coffe_shop/widgets/order_summary/order_details.dart';
import 'package:coffe_shop/widgets/order_summary/payment_method.dart';
import 'package:coffe_shop/widgets/order_summary/pick_up_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderSummaryPage extends StatelessWidget {
  const OrderSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.shade2,
        appBar: SecondaryAppBar(title: "Order Summary"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderDetails(),
                const SizedBox(
                  height: 15,
                ),
                const DeliverTo(),
                const SizedBox(
                  height: 15,
                ),
                const PickupDetails(),
                const SizedBox(
                  height: 15,
                ),
                const PaymentMethod(),
                const SizedBox(
                  height: 75,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: Typo.style(
                          fontSize: Typo.header4,
                          color: MyColors.shade7,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "\$25.40",
                        style: Typo.style(
                          fontSize: Typo.header4,
                          color: MyColors.shade7,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CButton(
                  text: "Place Order",
                  onPressed: () {
                    Get.toNamed(Routes.order.confirm);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
