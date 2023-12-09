import 'package:flutter/material.dart';
import 'package:flutter_application_1/viewmodels/models/ratesCard.dart';

class rateWidget extends StatelessWidget {
  final RatesCard ratesCard;
  const rateWidget({super.key, required this.ratesCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: InkWell(
        onTap: () {
          print('Rate was clicked');
        },
        child: Row(
          children: [
            Image(
              image: AssetImage('lib/assets/ratesIcon.png'),
              width: 36.0,
              height: 36.0,
            ),
            SizedBox(width: 12.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(ratesCard.ratesName,
                      style:
                          TextStyle(fontFamily: 'SFProText', fontSize: 16.0)),
                ),
                SizedBox(height: 2.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(ratesCard.ratesDescription,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.55),
                          fontFamily: 'SFProText',
                          fontSize: 14)),
                ),
              ],
            ),
            Spacer(),
            Image(
              image: AssetImage('lib/assets/disclosure.png'),
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
