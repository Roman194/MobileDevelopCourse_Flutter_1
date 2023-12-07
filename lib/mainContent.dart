import 'package:flutter/material.dart';
import 'package:flutter_application_1/subscribes.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SubscribesWidget(),
        ],
      ),
    );
  }
}
