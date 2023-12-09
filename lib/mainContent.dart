import 'package:flutter/material.dart';
import 'package:flutter_application_1/interests.dart';
import 'package:flutter_application_1/rates.dart';
import 'package:flutter_application_1/subscribes.dart';

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
              SizedBox(height: 46.0),
              ratesWidget(),
              SizedBox(height: 58.0),
              interestsWidget(),
              SizedBox(
                height: 32.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
