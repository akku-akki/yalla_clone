import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopicSquareProfile extends StatelessWidget {
  const TopicSquareProfile({
    Key key,
    this.path,
    this.size,
  }) : super(key: key);

  final String path;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.w),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(path), // To Be Replaced by NetworImage
          )),
    );
  }
}
