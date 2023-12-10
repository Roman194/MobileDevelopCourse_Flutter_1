import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/viewmodels/models/SubsectionModel.dart';

class subsectionWidget extends StatelessWidget {
  final SubsectionModel subInfo;
  const subsectionWidget({super.key, required this.subInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: subsectionsPadding),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              subInfo.subsection,
              style: subsectionTextStyle,
            ),
          ),
          SizedBox(height: sizedBoxAfterSubsection),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              subInfo.subDescription,
              style: subsectionSecondaryTextStyle,
            ),
          ),
          SizedBox(height: sizedBoxAfterSubsectionDescription),
        ],
      ),
    );
  }
}
