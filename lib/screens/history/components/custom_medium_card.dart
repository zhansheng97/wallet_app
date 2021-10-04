import 'package:flutter/material.dart';

class CustomMediumCard extends StatelessWidget {
  final List<Color> gradient;
  final IconData icon;
  final String title;
  final String price;
  final Alignment beginAlign;
  final Alignment endAlign;
  @required
  const CustomMediumCard({
    Key key,
    @required this.gradient,
    @required this.icon,
    @required this.title,
    @required this.price,
    this.beginAlign = Alignment.centerLeft,
    this.endAlign = Alignment.centerRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: beginAlign,
          end: endAlign,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 28,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "\$$price",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
