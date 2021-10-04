import 'package:flutter/material.dart';
import 'package:wallet_app/constants.dart';

class DateWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const DateWidget({
    Key key,
    @required this.title,
    @required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: Text(
          title,
          style: TextStyle(color: isSelected ? Colors.white : kBodyTextColor),
        ),
      ),
    );
  }
}
