import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Number extends StatelessWidget {
  final int index;
  final int activeIndex;
  final FocusNode focusNode;
  final void Function(String location) onInput;
  const Number(this.index,
      {super.key,
      required this.activeIndex,
      required this.focusNode,
      required this.onInput});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.shade3,
      ),
      child: Center(
        child: TextField(
          maxLength: 1,
          focusNode: focusNode,
          onChanged: (value) {
            //value should not be empty
            if (value.isEmpty) {
              //it means you are clearing the right side numbers
              if (index > 1) {
                onInput('down');
              }
            } else {
              //it means you are filling up
              if (index < 6) {
                onInput('up');
              }
            }
          },
          cursorColor: MyColors.shade4,
          textAlign: TextAlign.center,
          style: Typo.style(
            fontSize: Typo.header1,
            fontWeight: FontWeight.w500,
            color: MyColors.shade6,
          ),
          keyboardType: TextInputType.number,
          decoration:
              const InputDecoration(border: InputBorder.none, counterText: ""),
        ),
      ),
    );
  }
}
