import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/constants/texts.dart';
import 'package:flutter_application_1/viewmodels/models/ratesCard.dart';

class rateWidget extends StatelessWidget {
  final RatesCard ratesCard;
  const rateWidget({super.key, required this.ratesCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: rateRightPadding),
      child: InkWell(
        onTap: () {
          print(onRateClick);
        },
        child: Row(
          children: [
            Image(
              image: AssetImage('lib/assets/ratesIcon.png'),
              width: rateIconSize,
              height: rateIconSize,
            ),
            SizedBox(width: sizedBoxAfterRateIcon),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  //This aling on the text doesn't work. In other classes align works perfectly. I don't know how to fix this
                  alignment: Alignment.topLeft,
                  child: Text(ratesCard.ratesName, style: secondaryTextStyle),
                ),
                SizedBox(height: sizedBoxAfterRateMainText),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(ratesCard.ratesDescription,
                      style: backgroundColorTextStyle),
                ),
              ],
            ),
            Spacer(),
            Image(
              image: AssetImage('lib/assets/disclosure.png'),
              width: disclosureIconSize,
              height: disclosureIconSize,
            ),
          ],
        ),
      ),
    );
  }
}
