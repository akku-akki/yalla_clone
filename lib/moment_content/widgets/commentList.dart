import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 12.w, top: 12.w),
      children: [
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
        Comment(),
      ],
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(),
        SizedBox(
          width: 16.w,
        ),
        Flexible(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Mrs.Royal☺♥♦♣♣♠"),
              SizedBox(
                height: 12.h,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Text(
                    "Yesterday 09:47",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Spacer(),
                  Icon(
                    Icons.local_florist,
                    size: 35.w,
                  ),
                  Text("11"),
                  SizedBox(
                    width: 12.w,
                  ),
                  Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 30.w,
                  ),
                  Text("11"),
                  SizedBox(
                    width: 8.w,
                  ),
                ],
              ),
              Divider()
            ],
          ),
        )
      ],
    );
  }
}
