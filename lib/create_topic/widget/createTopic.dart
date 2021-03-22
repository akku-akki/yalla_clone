import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateTopicButton extends StatelessWidget {
  const CreateTopicButton({
    Key key,
    this.onTap,
  }) : super(key: key);

  /// On Tap Functionality for Creating Topics
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(28.w, 8.h,
                24.w, 24.h),
            color: Colors.white,
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.all(12.w),
              shape: StadiumBorder(),
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                "Create Topic",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      fontWeight: FontWeight.w500,color: Colors.white
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}