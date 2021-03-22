import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Requirements extends StatelessWidget {
  const Requirements({
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
          "Requirements for Creating Topics",
          style: titleStyle,
        ),
        RequirementsChecks(
          requirement: "User level >= 5",
          bodyStyle: bodyStyle,
        ),
        RequirementsChecks(
          requirement: "Been on yalla for 30 days",
          bodyStyle: bodyStyle,
        ),
        RequirementsChecks(
          requirement: "No violation of platform rules",
          bodyStyle: bodyStyle,
        )
      ],
    );
  }
}

class RequirementsChecks extends StatelessWidget {
  const RequirementsChecks({
    Key key,
    this.requirement,
    this.bodyStyle,
  }) : super(key: key);

  final String requirement;
  final TextStyle bodyStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_rounded,
            size: 30.w,
          ),
          SizedBox(
            width: 12.w,
          ),
          Text(
            requirement,
            style: bodyStyle,
          ),
        ],
      ),
    );
  }
}
