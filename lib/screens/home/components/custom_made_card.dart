import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class CustomMadeCard extends StatelessWidget {
  const CustomMadeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: _BoxClipper(),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kBox2Color, kBoxColor],
                begin: Alignment.topLeft,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "05/25",
                style: TextStyle(color: kTitleTextColor),
              ),
              const SizedBox(height: 60),
              Text(
                "VISA",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 28),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20.0,
          child: ClipPath(
            clipper: _BoxClipper2(),
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: 160,
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                gradient: LinearGradient(
                  colors: kGradient2Color,
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$10,000",
                    style: TextStyle(
                      color: kTitleTextColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Total Balance",
                    style: TextStyle(
                      color: kTitleTextColor,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Rakib Kowshar",
                    style: TextStyle(
                      color: kTitleTextColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BoxClipper extends CustomClipper<Path> {
  final kboxHeight = 20.0;
  final kboxWidth = 20.0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, kboxHeight * 2);
    path.lineTo(0, size.height - kboxHeight);
    path.quadraticBezierTo(0, size.height, kboxWidth, size.height);
    path.quadraticBezierTo(size.width / 2, size.height - kboxHeight,
        size.width - kboxWidth, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - kboxHeight);
    path.lineTo(size.width, kboxHeight * 2);
    path.quadraticBezierTo(
        size.width, kboxHeight, size.width - kboxWidth, kboxHeight);
    path.quadraticBezierTo(
        size.width / 2, kboxHeight * 3, kboxWidth, kboxHeight);
    path.quadraticBezierTo(0, kboxHeight, 0, kboxHeight * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _BoxClipper2 extends CustomClipper<Path> {
  final kboxHeight = 20.0;
  final kboxWidth = 20.0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, kboxHeight);
    path.lineTo(0, size.height - kboxHeight);
    path.quadraticBezierTo(0, size.height, kboxWidth, size.height);
    path.lineTo(size.width * 0.7, size.height * 0.95);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.95,
        size.width * 0.8, size.height * 0.9);
    path.lineTo(size.width, kboxHeight);
    path.quadraticBezierTo(size.width, 0, size.width - kboxWidth, 0);
    path.lineTo(kboxWidth, 0);
    path.quadraticBezierTo(0, 0, 0, kboxHeight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
