import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/widgets/interests.dart';
import 'package:flutter_application_1/widgets/rates.dart';
import 'package:flutter_application_1/widgets/subscribes.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SubscribesWidget(),
              SizedBox(height: sizedBoxAfterSubscribes),
              ratesWidget(),
              SizedBox(height: sizedBoxAfterRates),
              interestsWidget(),
              SizedBox(
                height: sizedBoxAfterInterests,
              )
            ],
          ),
        ),
      ),
    );
  }
}
