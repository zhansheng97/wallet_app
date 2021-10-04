import 'package:flutter/material.dart';
import 'package:wallet_app/screens/blank_screen.dart';
import 'package:wallet_app/screens/history/history_screen.dart';
import 'package:wallet_app/screens/splash/components/custom_hexagon_button.dart';
import 'package:wallet_app/screens/splash/splash_screen.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: kbackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: kBodyTextColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlankScreen(
                    title: "Home",
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.card_giftcard,
              color: kBodyTextColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryScreen(),
                ),
              );
            },
          ),
          CustomHexagonButton(ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          }),
          IconButton(
            icon: Icon(
              Icons.format_line_spacing,
              color: kBodyTextColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlankScreen(
                    title: "Notification",
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: kBodyTextColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlankScreen(
                    title: "Setting",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
