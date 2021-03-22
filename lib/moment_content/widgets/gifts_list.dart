
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftsList extends StatelessWidget {
  const GiftsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      children: [
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
        Gift(),
      ],
    );
  }
}

class Gift extends StatelessWidget {
  const Gift({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(),
            SizedBox(
              width: 12.w,
            ),
            Text(
              "◘○•♦♣☻Broken Heart",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Spacer(),
            Icon(
              Icons.local_pizza_rounded,
              color: Colors.yellow,
            ),
            Text("* 10"),
            const SizedBox(
              width: 10,
            )
          ],
        ),
        Divider(
          indent: MediaQuery.of(context).size.width * 0.2,
        )
      ],
    );
  }
}
