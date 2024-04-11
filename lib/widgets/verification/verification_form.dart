import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/widgets/verification/number_container.dart';
import 'package:flutter/material.dart';

class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  State<VerificationForm> createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  int _activeIndex = 1;

  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  late FocusNode focusNode5;
  late FocusNode focusNode6;

  void _onNumberInputted(String location) {
    setState(() {
      debugPrint("🚀🚀 LOCATION $location");
      location == 'up' ? _activeIndex++ : _activeIndex--;
      switch (_activeIndex) {
        case 1:
          focusNode1.requestFocus();
          break;
        case 2:
          focusNode2.requestFocus();
          break;
        case 3:
          focusNode3.requestFocus();
          break;
        case 4:
          focusNode4.requestFocus();
          break;
        case 5:
          focusNode5.requestFocus();
          break;
        case 6:
          focusNode6.requestFocus();
          break;
        default:
          break;
      }
    });
  }

  //init focus nodes
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    focusNode5 = FocusNode();
    focusNode6 = FocusNode();
    super.initState();
  }

  //remove them from memory
  @override
  void dispose() {
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    focusNode5.dispose();
    focusNode6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Number(1,
                activeIndex: _activeIndex,
                focusNode: focusNode1,
                onInput: _onNumberInputted),
            Number(2,
                activeIndex: _activeIndex,
                focusNode: focusNode2,
                onInput: _onNumberInputted),
            Number(3,
                activeIndex: _activeIndex,
                focusNode: focusNode3,
                onInput: _onNumberInputted),
            Number(4,
                activeIndex: _activeIndex,
                focusNode: focusNode4,
                onInput: _onNumberInputted),
            Number(5,
                activeIndex: _activeIndex,
                focusNode: focusNode5,
                onInput: _onNumberInputted),
            Number(6,
                activeIndex: _activeIndex,
                focusNode: focusNode6,
                onInput: _onNumberInputted),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "If you didn't recieve a code?",
          textAlign: TextAlign.center,
          style: Typo.style(
              fontSize: Typo.header6,
              fontWeight: FontWeight.w600,
              color: MyColors.shade5),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "RESEND",
          style: Typo.style(
              color: MyColors.primary,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
