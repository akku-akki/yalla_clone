import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ResponsibilitiesOfTopicHosts extends StatelessWidget {
  const ResponsibilitiesOfTopicHosts({
    Key key,
    this.titleStyle,
    this.bodyStyle,
  }) : super(key: key);
  final TextStyle titleStyle;
  final TextStyle bodyStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Main Responsibilities of topic Hosts",
          style: titleStyle,
        ),
        Responsibilites(
          bodyStyle: bodyStyle,
          body:
              "1.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
        ),
        Responsibilites(
          bodyStyle: bodyStyle,
          body:
              "2.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        ),
        Responsibilites(
          bodyStyle: bodyStyle,
          body:
              "3.Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
        ),
        Responsibilites(
          bodyStyle: bodyStyle,
          body:
              "4.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        ),
      ],
    );
  }
}

class Responsibilites extends StatelessWidget {
  const Responsibilites({
    Key key,
    this.body,
    this.bodyStyle,
  }) : super(key: key);

  final String body;
  final TextStyle bodyStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Text(
        body,
        style: bodyStyle,
      ),
    );
  }
}
