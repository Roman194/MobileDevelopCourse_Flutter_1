import 'package:flutter/material.dart';
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
            spacing: 8.0,
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
