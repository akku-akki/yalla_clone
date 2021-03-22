import 'package:flutter/material.dart';

class Topics extends StatelessWidget {
  const Topics({
    Key key,
    @required this.titleStyle,
    @required this.bodyStyle,
  }) : super(key: key);

  final TextStyle titleStyle;
  final TextStyle bodyStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What are Topics",
          style: titleStyle,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
            "A topic is a place for people with common interests to share related content and express their opinion. We encourage you to create topics to bring likeminded people together.",style: bodyStyle,),
      ],
    );
  }
}
