import 'package:flutter/material.dart';
import 'package:flutter_application_1/rate.dart';
import 'package:flutter_application_1/subsection.dart';
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
        SizedBox(height: 8.0),
        SizedBox(
          height: 192.0,
          width: MediaQuery.of(context).size.width - 16,
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) {
              return Divider(
                height: 24.0,
                thickness: 2.0,
                indent: 50.0,
                color: Color.fromRGBO(0, 0, 0, 0.12),
              );
            },
            itemCount: 3,
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
