import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          height: 4,
          width: 4,
          decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
