import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/viewmodels/testData.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: headerPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: headerUserLogoPadding),
            child: Column(
              children: [
                Image(
                  image: AssetImage('lib/assets/userLogo.png'),
                  width: headerUserLogoSize,
                  height: headerUserLogoSize,
                ),
                SizedBox(height: headerSizedBoxAfterLogo),
                Text(
                  userName,
                  style: primaryTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
