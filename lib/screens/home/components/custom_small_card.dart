import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class CustomSmallCard extends StatelessWidget {
  final String title;
  final String price;

  const CustomSmallCard({
    Key key,
    @required this.title,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _SmallBoxClipper(),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: kGradient1Color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: kBody2TextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 18,
                color: kTitleTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SmallBoxClipper extends CustomClipper<Path> {
  final kBoxHeight = 20.0;
  final kBoxWidth = 20.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, kBoxHeight);
    path.lineTo(0, size.height - kBoxHeight);
    path.quadraticBezierTo(0, size.height, kBoxWidth, size.height);
    path.lineTo(size.width - kBoxWidth, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - kBoxHeight);
    path.lineTo(size.width, kBoxHeight / 2);
    path.quadraticBezierTo(
        size.width * 0.9, 0, size.width * 0.8, kBoxHeight / 2);
    path.lineTo(kBoxWidth, kBoxHeight / 2);
    path.quadraticBezierTo(0, kBoxHeight / 2, 0, kBoxHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
