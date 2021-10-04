import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home/components/custom_small_card.dart';
import 'package:wallet_app/screens/home/components/section_title.dart';

class UpComingMoneySection extends StatelessWidget {
  const UpComingMoneySection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: "Upcoming Money"),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomSmallCard(
                  title: "Salary",
                  price: "2844.50",
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: CustomSmallCard(
                  title: "Business",
                  price: "2844.50",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
