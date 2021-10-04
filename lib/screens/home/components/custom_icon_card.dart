import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class CustomIconCard extends StatelessWidget {
  const CustomIconCard({
    Key key,
    @required this.icon,
    @required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _SmallIconClipper(),
      child: Container(
        padding: EdgeInsets.only(bottom: 12),
        alignment: Alignment.bottomCenter,
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: kGradient1Color,
          ),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 40,
        ),
      ),
    );
  }
}

class _SmallIconClipper extends CustomClipper<Path> {
  final kboxHeight = 20.0;
  final kboxWidth = 20.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, kboxHeight);
    path.lineTo(0, size.height - kboxHeight * 2);
    path.quadraticBezierTo(0, size.height, kboxWidth, size.height);
    path.lineTo(size.width - kboxWidth, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - kboxHeight);
    path.lineTo(size.width, kboxHeight);
    path.quadraticBezierTo(
        size.width * 0.75, 0, size.width / 2, kboxHeight / 1.5);
    path.quadraticBezierTo(0, kboxHeight / 2, 0, kboxHeight * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
