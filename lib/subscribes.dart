import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          subsectionWidget(
            subInfo: subsectionData[0],
          ),
          SizedBox(
            height: 130,
            width: double.infinity,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 8.0,
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
