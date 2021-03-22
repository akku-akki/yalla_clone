import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/user_name_and_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicHost extends StatelessWidget {
  const TopicHost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(bottom: 6.h),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Topic Host",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 24.h,
            ),
            UserNameAndAvatar(
              showDivider: false,
            )
          ],
        ),
      ),
    );
  }
}
