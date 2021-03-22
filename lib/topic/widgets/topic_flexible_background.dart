import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/topic_square_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';

class TopicFlexibleBackground extends StatelessWidget {
  /// Flexible Background for SliverAppbar
  const TopicFlexibleBackground({
    Key key,
    this.topicTitle,
    this.imagePath,
  }) : super(key: key);

  final String topicTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),

          /// To be replaced by network Image
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.grey.withOpacity(0.6),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _currentTopicStatus(context),
            SizedBox(
              height: 16.h,
            ),
            _buildTopicDescription(context),
            SizedBox(
              height: 16.h,
            ),
            _buildbottomLinks(),
            Container(
              width: double.infinity,
              height: 6.h,
              color: Colors.grey[300],
            )
          ],
        )
      ],
    );
  }

  Padding _buildTopicDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 6.w, right: 6.w, bottom: 8.h),
      child: Row(
        children: [
          Flexible(
            flex: 8,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
            size: 24.w,
          )
        ],
      ),
    );
  }

  Padding _currentTopicStatus(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopicSquareProfile(
            path: imagePath,
            size: 90.h,
          ),
          SizedBox(
            width: 12.w,
          ),
          Flexible(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  topicTitle,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Row(
                  children: [
                    SocialStatusIndicator(
                      iconData: Icons.person,
                      string: "26.6k",
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SocialStatusIndicator(
                      iconData: Icons.file_copy,
                      string: "2.7k",
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SocialStatusIndicator(
                      iconData: Icons.shopping_basket_outlined,
                      string: "745.6k",
                    ),
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          FollowButtonSmall(),
        ],
      ),
    );
  }

  Container _buildbottomLinks() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          TopicLinks(
            title:
                "[Glory Loard Activity : My Best Friend Yalla  My Best Friend Yalla My Best Friend Yalla]",
          ),
          TopicLinks(
            title: "[Glory Loard Activity ]",
          ),
          TopicLinks(
            title: "[Moments Guidance ]",
          ),
        ],
      ),
    );
  }
}

class TopicLinks extends StatelessWidget {
  /// Links To be displayed on bottom of flexible appbar

  const TopicLinks({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(6.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.volume_down_outlined,
              color: Colors.redAccent,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 10,
              child: Text(
                title,
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.grey,
              size: 24.w,
            )
          ],
        ),
      ),
    );
  }
}

class FollowButtonSmall extends StatelessWidget {
  const FollowButtonSmall({
    Key key,
    this.callBack,
  }) : super(key: key);

  ///Callback to follow a user
  final VoidCallback callBack;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (callBack != null) {
          callBack();
        }
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Follow",
          style:
              Theme.of(context).textTheme.button.copyWith(color: Colors.white),
        ),
        margin: EdgeInsets.only(right: 8.w),
        padding: EdgeInsets.symmetric(
            horizontal: 12.w, vertical: 3.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.cyan,
        ),
      ),
    );
  }
}

class SocialStatusIndicator extends StatelessWidget {
  /// For Describing No of Followers or views ETC.

  const SocialStatusIndicator({
    Key key,
    this.iconData,
    this.string,
  }) : super(key: key);

  final IconData iconData;
  final String string;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme.caption;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 28.w,
          color: Colors.white,
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          string,
          style: theme.copyWith(color: Colors.white, fontSize: 22.ssp),
        )
      ],
    );
  }
}
