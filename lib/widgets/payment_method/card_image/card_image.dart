import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardImage extends StatelessWidget {
  final String? cardNumber;
  final String? validUntil;
  final String? holderName;
  const CardImage({
    super.key,
    this.cardNumber,
    this.validUntil,
    this.holderName,
  });

  @override
  Widget build(BuildContext context) {
    String number;
    (cardNumber == null || cardNumber!.isEmpty)
        ? number = "XXXXXXXXXXXXXXXX"
        : number = cardNumber!;

    return Stack(
      children: [
        Image.asset(
          'assets/images/card-image.png',
          height: 240,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 80,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              (cardNumber == null || cardNumber!.isEmpty)
                  ? Helpers.formatCardNumber("XXXXXXXXXXXXXXXX")
                  : Helpers.formatCardNumber(cardNumber!),
              style: GoogleFonts.novaSquare(
                color: MyColors.shade1,
                fontSize: Typo.header2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 45,
          left: 175,
          right: 0,
          child: Text(
            validUntil ?? "00/00",
            style: GoogleFonts.novaSquare(
              color: MyColors.shade1,
              fontSize: Typo.header5,
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 0,
          child: Text(
            (holderName == null || holderName!.isEmpty)
                ? "YOUR NAME"
                : holderName!.toUpperCase(),
            style: GoogleFonts.novaSquare(
              color: MyColors.shade1,
              fontSize: Typo.header4,
            ),
          ),
        ),
      ],
    );
  }
}
