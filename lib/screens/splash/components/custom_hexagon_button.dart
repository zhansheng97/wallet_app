import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class CustomHexagonButton extends StatelessWidget {
  final VoidCallback ontap;
  final bool isBigButton;

  const CustomHexagonButton({
    Key key,
    @required this.ontap,
    this.isBigButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  isBigButton
                      ? BoxShadow(
                          offset: Offset(0, 10),
                          color: kPrimaryColor,
                          blurRadius: 20,
                        )
                      : BoxShadow(
                          offset: Offset(0, 10),
                          color: Colors.transparent,
                          blurRadius: 20,
                        ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: ontap,
            child: ClipPath(
              clipper: _HexagonClipper(),
              child: Container(
                padding: isBigButton
                    ? EdgeInsets.all(20.0)
                    : EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: kGradient2Color,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class BoxShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    // here are my custom shapes
    path.moveTo(0, size.height * 0.2);
    path.lineTo(0, size.height * 0.8);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width / 2, 0);
    path.close();

    canvas.drawShadow(path, kPrimaryColor, 3.0, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
