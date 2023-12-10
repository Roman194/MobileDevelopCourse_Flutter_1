import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/numerals.dart';
import 'package:flutter_application_1/subscribe.dart';
import 'package:flutter_application_1/subsection.dart';
import 'package:flutter_application_1/viewmodels/testData.dart';

class SubscribesWidget extends StatelessWidget {
  const SubscribesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: beforeSubscribesPadding),
      child: Column(
        children: [
          subsectionWidget(
            subInfo: subsectionData[0],
          ),
          SizedBox(height: afterSubsectionSubscribesPadding),
          SizedBox(
            height: subscribesHegiht,
            width: double.infinity,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: spaceBetweenSubscribes,
                );
              },
              itemCount: subscribeCardData.length,
              itemBuilder: (context, index) {
                return subscribeView(
                  subscribeCard: subscribeCardData[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
