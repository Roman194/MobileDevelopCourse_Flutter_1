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
      padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 210.0),
            child: IconButton(
              padding: const EdgeInsets.all(0.0),
              icon: Icon(iconClose, color: Color(0xFF08A652)),
              iconSize: 24.0,
              onPressed: () {
                print('IconBackPressed');
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Image(
                  image: AssetImage('lib/assets/userLogo.png'),
                  width: 110.0,
                  height: 110.0,
                ),
                SizedBox(height: 36),
                Text(
                  'Екатерина',
                  style: TextStyle(fontFamily: 'SFProDisplay', fontSize: 24),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 210.0),
            child: IconButton(
              padding: const EdgeInsets.all(0.0),
              icon: Icon(
                iconLogOut,
                color: Color(0xFF08A652),
              ),
              iconSize: 24.0,
              onPressed: () {
                print('IconLogOutPressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
