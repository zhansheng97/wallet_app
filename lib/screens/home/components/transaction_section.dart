import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home/components/section_title.dart';
import 'package:wallet_app/screens/home/components/transaction_tile.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Transaction"),
        const SizedBox(height: 20),
        TransactionTile(
          icon: Icons.countertops,
          title: "UI/UX Course",
          date: " 02 Jan, 2021",
          price: "80.00",
          onTap: () {},
        ),
        TransactionTile(
          icon: Icons.countertops,
          title: "Dribbble Pro",
          date: " 04 Jan, 2021",
          price: "59.00",
          iconColor: Colors.purple[300],
          onTap: () {},
        ),
        TransactionTile(
          icon: Icons.countertops,
          title: "UI/UX Course",
          date: " 02 Jan, 2021",
          price: "80.00",
          iconColor: Colors.green[100],
          onTap: () {},
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
