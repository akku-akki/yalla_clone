import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/user_name_and_avatar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikesList extends StatelessWidget {
  const LikesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      children: [
        UserNameAndAvatar(),
        UserNameAndAvatar(),
        UserNameAndAvatar(),
        UserNameAndAvatar(),
      ],
    );
  }
}

