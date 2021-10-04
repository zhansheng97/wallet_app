import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';
import 'package:wallet_app/screens/history/components/custom_medium_card.dart';

class ExpenseAndIncome extends StatelessWidget {
  const ExpenseAndIncome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        top: 20.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomMediumCard(
              icon: Icons.arrow_upward,
              title: "Expense",
              price: "6,640",
              gradient: kGradient2Color,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: CustomMediumCard(
              icon: Icons.arrow_downward,
              title: "Income",
              price: "4,660",
              gradient: kGradient1Color,
              beginAlign: Alignment.center,
              endAlign: Alignment.bottomLeft,
            ),
          ),
        ],
      ),
    );
  }
}
