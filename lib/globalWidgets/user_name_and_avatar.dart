import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameAndAvatar extends StatelessWidget {
  const UserNameAndAvatar({
    Key key, this.showDivider = true,
  }) : super(key: key);

  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(),
           SizedBox(
              width:  showDivider ?  20.w : 12.w,
            ),
            Text(
              "◘○•♦♣☻Broken Heart",
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
       if (showDivider == true) Divider(
          indent: MediaQuery.of(context).size.width * 0.2,
        )
      ],
    );
  }
}
