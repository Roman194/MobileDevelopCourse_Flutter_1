import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/constants/texts.dart';
import 'package:flutter_application_1/viewmodels/models/interestCard.dart';

class interestWidget extends StatelessWidget {
  final InterestCard interestCard;
  const interestWidget({super.key, required this.interestCard});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: () {
            print(onInterestClick);
          },
          child: Chip(
            backgroundColor: chipBackgroundColor,
            padding: EdgeInsets.symmetric(vertical: paddingIncideInterestChips),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(borderRadiusInterestChips)),
                side: BorderSide(color: chipBorderColor)),
            label: Text(interestCard.interest),
          ),
        ),
      ],
    );
  }
}
