import 'package:flutter/material.dart';
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
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), blurRadius: 10.0),
              BoxShadow(
                  color: Color.fromRGBO(79, 79, 108, 0.07), blurRadius: 14.0)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image(
                    image: AssetImage('lib/assets/sberPrimeIcon.png'),
                    width: 36.0,
                    height: 36.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    subscribeCard.serviceName,
                    style: TextStyle(fontFamily: 'SFProText', fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(
                height: 22.0,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      subscribeCard.paymentDay,
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subscribeCard.paymentPrice,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.55),
                        fontFamily: 'SFProText',
                        fontSize: 14),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
