import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/interest.dart';
import 'package:flutter_application_1/subsection.dart';
import 'package:flutter_application_1/viewmodels/testData.dart';

class interestsWidget extends StatelessWidget {
  const interestsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        subsectionWidget(subInfo: subsectionData[2]),
        Align(
          alignment: Alignment.centerLeft,
          child: Wrap(
            spacing: spaceBetweenInterestChips,
            children: [
              for (int index = 0; index < interestData.length; index++)
                interestWidget(interestCard: interestData[index])
            ],
          ),
        ),
      ],
    );
  }
}
