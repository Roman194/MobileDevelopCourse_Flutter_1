import 'package:flutter/material.dart';
import 'package:flutter_application_1/viewmodels/models/SubsectionModel.dart';

class subsectionWidget extends StatelessWidget {
  final SubsectionModel subInfo;
  const subsectionWidget({super.key, required this.subInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'У вас подключено',
              style: TextStyle(
                  fontFamily: 'SFProText',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Подписки, автоплатежи и сервисы, на которые вы подписались',
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.55),
                fontFamily: 'SFProText',
                fontSize: 14),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
