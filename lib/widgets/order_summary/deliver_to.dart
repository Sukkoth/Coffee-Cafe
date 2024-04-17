import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery To",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: MyColors.shade5,
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    "House no,-05, Block-A, Road, Houston, New York City",
                    style: Typo.style(
                      fontSize: Typo.header6,
                      color: MyColors.shade5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
