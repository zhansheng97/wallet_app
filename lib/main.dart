import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';
import 'package:wallet_app/screens/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline3: TextStyle(
                  color: kTitleTextColor, fontWeight: FontWeight.w500),
              headline5: TextStyle(
                  color: kTitleTextColor, fontWeight: FontWeight.w500),
              headline6: TextStyle(color: kTitleTextColor),
              bodyText1: TextStyle(color: kBodyTextColor),
              bodyText2: TextStyle(color: kBodyTextColor),
            ),
      ),
      home: SplashScreen(),
    );
  }
}
