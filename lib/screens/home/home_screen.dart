import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home/components/bottom_nav_bar.dart';
import 'package:wallet_app/screens/home/components/transaction_section.dart';
import '../../constants.dart';
import 'components/custom_dot.dart';
import 'components/custom_made_card.dart';
import 'components/name_and_circle_avatar.dart';
import 'components/up_coming_money_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
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
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ListView(
                children: [
                  NameAndCircleAvatar(),
                  const SizedBox(height: 20.0),
                  CustomMadeCard(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomDot(),
                  ),
                  UpComingMoneySection(),
                  TransactionSection(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
