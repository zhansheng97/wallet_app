import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';
import 'package:wallet_app/screens/home/home_screen.dart';

import 'components/custom_hexagon_button.dart';
import 'components/splash_headline.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundColor(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HeaderText
                SplashHeadline(),
                const SizedBox(height: 20),
                //Description
                Text(
                  "Best payment method, connects your money to your friends, family, brands and experience.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                CustomHexagonButton(
                  isBigButton: true,
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundColor extends StatelessWidget {
  const BackgroundColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kbackground2Color,
            kbackgroundColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
