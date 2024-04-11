import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class CTextInput extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hint;
  final bool obscure;
  const CTextInput(
      {super.key,
      this.controller,
      required this.label,
      required this.hint,
      this.obscure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Typo.style(
              fontSize: Typo.header4,
              fontWeight: FontWeight.w600,
              color: MyColors.shade6),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: obscure,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyColors.shade4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MyColors.shade6),
            ),
            hintText: hint,
            hintStyle:
                Typo.style(color: MyColors.shade4, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
