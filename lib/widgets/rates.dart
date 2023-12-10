import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/widgets/rate.dart';
import 'package:flutter_application_1/widgets/subsection.dart';
import 'package:flutter_application_1/viewmodels/testData.dart';

class ratesWidget extends StatelessWidget {
  const ratesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        subsectionWidget(subInfo: subsectionData[1]),
        SizedBox(height: afterSusectionRatesPadding),
        SizedBox(
          height: ratesHeight,
          width: MediaQuery.of(context).size.width - ratesWidthCountConst,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Divider(
                height: dividerHeight,
                thickness: dividerThickness,
                indent: dividerIndient,
                color: dividerColor,
              );
            },
            itemCount: ratesData.length,
            itemBuilder: (context, index) {
              return rateWidget(
                ratesCard: ratesData[index],
              );
            },
          ),
        )
      ],
    );
  }
}
