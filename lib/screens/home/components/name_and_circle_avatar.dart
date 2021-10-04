import 'package:flutter/material.dart';

class NameAndCircleAvatar extends StatelessWidget {
  const NameAndCircleAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Rakib",
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 5),
              Text("Welcome back"),
            ],
          ),
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              shape: BoxShape.circle,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
