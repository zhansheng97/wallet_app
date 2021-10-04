import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class HistoryCard extends StatelessWidget {
  final String title;
  final String catergory;
  final String price;
  final IconData icon;
  final VoidCallback onTap;

  const HistoryCard({
    Key key,
    @required this.title,
    @required this.catergory,
    @required this.price,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Material(
        color: Color(0xFF242D36),
        borderRadius: BorderRadius.circular(16.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: kbackgroundColor,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Icon(
                        icon,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontSize: 16.0),
                        ),
                        const SizedBox(height: 10),
                        Text(catergory),
                      ],
                    ),
                  ],
                ),
                Text(
                  price,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
