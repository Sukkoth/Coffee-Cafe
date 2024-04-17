import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class PickupDetails extends StatelessWidget {
  const PickupDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pick Up Details",
              style: Typo.style(
                fontSize: Typo.header5,
                color: MyColors.shade7,
                fontWeight: FontWeight.w800,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.edit_note_sharp,
                color: MyColors.shade6,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade300,
              )),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pick-up Time",
                      style: Typo.style(
                        fontSize: Typo.header5,
                        color: MyColors.shade7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "05:30 am",
                      style: Typo.style(
                        fontSize: Typo.header6,
                        color: MyColors.shade5,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pick-up Time",
                      style: Typo.style(
                        fontSize: Typo.header5,
                        color: MyColors.shade7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "05:30 am",
                      style: Typo.style(
                        fontSize: Typo.header6,
                        color: MyColors.shade5,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
