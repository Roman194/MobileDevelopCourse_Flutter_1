import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/fonts.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/constants/texts.dart';
import 'package:flutter_application_1/viewmodels/models/SubscribeCard.dart';

class subscribeView extends StatelessWidget {
  final SubscribeCard subscribeCard;
  const subscribeView({
    super.key,
    required this.subscribeCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:
          216, //all my attempts to set the width on boxes affects on shadow: it doesn't work properly anymore. I don't know how to fix this
      child: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
            color: subscribeCardBackground,
            borderRadius:
                BorderRadius.all(Radius.circular(subscribeCardRadius)),
            boxShadow: [
              BoxShadow(
                  color: firstBoxShadow, blurRadius: subscribeCardShadowOne),
              BoxShadow(
                  color: secondBoxShadow, blurRadius: subscribeCardShadowTwo)
            ]),
        child: InkWell(
          //Also hower effect doesn't work properly too
          onTap: () {
            print(onSubscribeCardClick);
          },
          child: Padding(
            padding: const EdgeInsets.all(subscribeCardPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(subscribeCard.serviceIcon),
                      width: subscribeCardIconSize,
                      height: subscribeCardIconSize,
                    ),
                    SizedBox(
                      width: sizedBoxAfterSubscribeCardIcon,
                    ),
                    Text(
                      subscribeCard.serviceName,
                      style: secondaryTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: sizedBoxAfterSubscribeCardMainText,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: subscribeCardBeforeMainTextPadding),
                      child: Text(subscribeCard.paymentDay,
                          style: backgroundTextStyle),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(subscribeCard.paymentPrice,
                        style: backgroundColorTextStyle),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
