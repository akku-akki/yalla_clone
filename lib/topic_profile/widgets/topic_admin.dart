import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/user_name_and_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicAdmin extends StatelessWidget {
  const TopicAdmin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(bottom: 8.h),
      color: Colors.white,
      child: Padding(
          padding: EdgeInsets.only(
              left: 10.w,
              right: 8.w,
              bottom: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Topic Admins",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.info_outline_rounded),
                  onPressed: (){},
                  )
                ],
              ),
              UserNameAndAvatar(
                showDivider: false,
              )
            ],
          )),
    );
  }
}
