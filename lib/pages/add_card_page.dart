import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/app_bars/secondary_app_bar.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/payment_method/app_date_picker.dart';
import 'package:flutter/material.dart';

class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.shade2,
        appBar: SecondaryAppBar(title: "Add New Card"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/card-image.png',
                  height: 240,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 15,
                ),
                Form(
                  child: Column(
                    children: [
                      CTextInput(
                        label: 'Name on Card *',
                        labelStyle: Typo.style(
                          fontSize: Typo.header5,
                          fontWeight: FontWeight.w600,
                          color: MyColors.shade6,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 15,
                        ),
                        hint: "Enter cardholder name",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CTextInput(
                        label: 'Card number *',
                        labelStyle: Typo.style(
                          fontSize: Typo.header5,
                          fontWeight: FontWeight.w600,
                          color: MyColors.shade6,
                        ),
                        keyboardType: TextInputType.number,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 15,
                        ),
                        hint: "Enter your card number",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const AppDatePicker(label: 'Expiry date *'),
                      const SizedBox(
                        height: 15,
                      ),
                      CTextInput(
                        label: 'CVV *',
                        labelStyle: Typo.style(
                          fontSize: Typo.header5,
                          fontWeight: FontWeight.w600,
                          color: MyColors.shade6,
                        ),
                        keyboardType: TextInputType.number,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 15,
                        ),
                        hint: "CVV code here",
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            side: BorderSide(color: MyColors.shade4),
                            onChanged: (val) {},
                            activeColor: MyColors.primary,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                              ),
                            ),
                            child: Text(
                              "Save your card number for future payment",
                              style: Typo.style(
                                fontSize: Typo.header6,
                                fontWeight: FontWeight.w600,
                                color: MyColors.shade4,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      //button
                      CButton(text: "Confirm", onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
