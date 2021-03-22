

import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/user_name_and_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewFollowers extends StatelessWidget {
  const NewFollowers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(bottom: 8.h),
      color: Colors.white,
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 8.w, vertical: 22.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Followers",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              ...[1, 2, 3, 4, 5, 6, 7, 8, 9]
                  .map((e) => Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: UserNameAndAvatar(
                          showDivider: false,
                        ),
                      ))
                  .toList(),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Display up to 200 users",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
