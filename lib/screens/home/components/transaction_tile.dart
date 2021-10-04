import 'package:flutter/material.dart';
import 'package:wallet_app/screens/home/components/custom_icon_card.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String price;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;

  const TransactionTile({
    Key key,
    @required this.title,
    @required this.date,
    @required this.price,
    @required this.icon,
    this.iconColor = Colors.white,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomIconCard(icon: icon, iconColor: iconColor),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 10),
                      Text(date),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 22.0),
                child: Text(
                  "-\$$price",
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
