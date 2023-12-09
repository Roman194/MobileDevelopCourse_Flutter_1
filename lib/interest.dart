import 'package:flutter/material.dart';
import 'package:flutter_application_1/viewmodels/models/interestCard.dart';

class interestWidget extends StatelessWidget {
  final InterestCard interestCard;
  const interestWidget({super.key, required this.interestCard});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: () {
            print('Interest was clicked');
          },
          child: Chip(
            backgroundColor: Color.fromRGBO(0, 0, 0, 0.08),
            padding: EdgeInsets.symmetric(vertical: 7.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                side: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.00))),
            label: Text(interestCard.interest),
          ),
        ),
      ],
    );
  }
}
