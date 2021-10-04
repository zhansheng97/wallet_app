import 'package:flutter/material.dart';
import 'package:wallet_app/screens/history/components/history_card.dart';
import 'package:wallet_app/screens/home/components/section_title.dart';

class HistorySection extends StatelessWidget {
  const HistorySection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SectionTitle(title: "History"),
          ),
          HistoryCard(
            icon: Icons.shopping_bag,
            title: "Clothing Store",
            catergory: "Shopping",
            price: "-129.50",
            onTap: () {
              print("Shopping");
            },
          ),
          HistoryCard(
            icon: Icons.person,
            title: "Jane Foster",
            catergory: "Send Money",
            price: "-129.50",
            onTap: () {
              print("Send Money");
            },
          ),
        ],
      ),
    );
  }
}
