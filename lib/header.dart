import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    IconData iconClose = Icons.close;
    IconData iconLogOut = Icons.logout;

    return Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                iconClose,
                size: 24.0,
                color: Color(0xFF08A652),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Image(
                image: AssetImage('lib/assets/userLogo.png'),
                width: 110.0,
                height: 110.0,
              ),
              SizedBox(height: 36),
              Text(
                'Екатерина',
                style: TextStyle(fontFamily: 'SFProText', fontSize: 24),
              ),
              Text('Текст')
            ],
          ),
          Spacer(),
          Icon(
            iconLogOut,
            size: 24.0,
            color: Color(0xFF08A652),
          ),
        ],
      ),
    );
  }
}
