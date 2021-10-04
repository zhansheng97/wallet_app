import 'package:flutter/material.dart';

class SplashHeadline extends StatelessWidget {
  const SplashHeadline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Easy\n",
            style: Theme.of(context).textTheme.headline3,
          ),
          TextSpan(
            text: "banking\n",
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(color: Color(0xFFFF857A)),
          ),
          TextSpan(
            text: "with the \n",
            style: Theme.of(context).textTheme.headline3,
          ),
          TextSpan(
            text: "simplest\n",
            style: Theme.of(context).textTheme.headline3,
          ),
          TextSpan(
            text: "way",
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
