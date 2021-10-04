import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wallet_app/screens/splash/components/custom_hexagon_button.dart';
import 'package:wallet_app/screens/splash/splash_screen.dart';

import '../constants.dart';

class BlankScreen extends StatelessWidget {
  final String title;

  const BlankScreen({Key key, this.title = "Blank"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          BackgroundColor(),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not yet Implement "),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kBodyTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          color: kTitleTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert_rounded,
            color: kBodyTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
