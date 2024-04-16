import 'package:coffe_shop/constants.dart';
import 'package:flutter/material.dart';

class AppDatePicker extends StatefulWidget {
  final String label;
  const AppDatePicker({super.key, required this.label});

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime? _expiryDate;

  void _setExpiryDate() async {
    var date = DateTime.now();
    var selectedDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(date.year - 1),
      lastDate: DateTime(date.year + 10),
      confirmText: "SELECT EXPIRY DATE",
      helpText: "Only month and year, date does not matter",
    );
    setState(() {
      _expiryDate = selectedDate;
    });
    debugPrint("🚀🚀 DATE $selectedDate");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Typo.style(
            fontSize: Typo.header5,
            fontWeight: FontWeight.w600,
            color: MyColors.shade6,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: _setExpiryDate,
          child: Container(
            height: 57,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: MyColors.shade4,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _expiryDate == null
                        ? 'Select Date'
                        : '${_expiryDate?.month.toString()}/${_expiryDate?.year.toString()}',
                    style: Typo.style(
                      fontSize: Typo.header5,
                      fontWeight: FontWeight.w600,
                      color: MyColors.shade4,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: MyColors.shade5,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
