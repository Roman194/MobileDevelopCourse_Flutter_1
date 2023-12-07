import 'package:flutter/material.dart';

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
          SizedBox(
            height: 130,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8.0), //?
              itemCount: 2,
              itemBuilder: (context, index) {
                return DecoratedBox(
                  position: DecorationPosition.background,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                            blurRadius: 10.0),
                        BoxShadow(
                            color: Color.fromRGBO(79, 79, 108, 0.07),
                            blurRadius: 14.0)
                      ]),
                  child: Column(
                    children: [
                      Text('СберПрайм'),
                      Text('Платёж 9 июля'),
                      Text('199 ₽ в месяц')
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
