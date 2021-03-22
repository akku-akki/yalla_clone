//// THis file contain demo widgets for ui actual widgets need to be added from main repo

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostsList extends StatelessWidget {
  const PostsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SocialPost(
          showSharedLink: true,
        ),
        SocialPost(
          showSharedLink: false,
        ),
        SocialPost(
          showSharedLink: false,
        ),
        SocialPost(
          showSharedLink: false,
        ),
        SocialPost(
          showSharedLink: false,
        ),
      ],
    );
  }
}

class SocialPost extends StatelessWidget {
  const SocialPost({
    Key key,
    @required this.showSharedLink,
  }) : super(key: key);

  final bool showSharedLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHeader(),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"),
                SizedBox(
                  height: 12.h,
                ),
                Image.asset(
                  "assets/dummy.jpg",
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          showSharedLink ? SharedLink() : SizedBox(),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //       horizontal: Spacing.size6W, vertical: Spacing.size6H),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Icon(Icons.ios_share),
          //       SizedBox(
          //         width: 50,
          //       ),
          //       PostButton(
          //         icons: Icons.comment_outlined,
          //       ),
          //       PostButton(
          //         icons: Icons.thumb_up_alt_outlined,
          //       ),
          //       PostButton(
          //         icons: Icons.card_giftcard,
          //       ),
          //     ],
          //   ),
          // ),
          // CustomDivider()
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          maxRadius: 30.w,
        ),
        SizedBox(
          width: 8.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("CANDY SANDY"),
            Text("Sunday 16:10 •"),
            Row(
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 16.w,
                ),
                Icon(
                  Icons.circle,
                  size: 16.w,
                  color: Colors.red,
                ),
                Icon(
                  Icons.circle,
                  size: 16.w,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Container(
          child: Text("Follow"),
          margin: EdgeInsets.only(right: 8.w),
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.grey)),
        ),
        Icon(
          Icons.more_horiz,
        )
      ],
    );
  }
}

class SharedLink extends StatelessWidget {
  const SharedLink({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDivider(),
        Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w),
          child: Row(
            children: [
              Image.network(
                "https://picsum.photos/250?image=9",
                height: 60,
                width: 60,
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Puzzles"),
                  Text(
                    "Post any type of question nd answer",
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 24.w,
              ),
              const SizedBox(
                width: 6,
              )
            ],
          ),
        ),
        CustomDivider(),
      ],
    );
  }
}

class PostButton extends StatelessWidget {
  const PostButton({
    Key key,
    this.icons,
  }) : super(key: key);

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          icons,
        ),
        SizedBox(
          width: 8.h,
        ),
        Text("5"),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 6.h,
      margin: EdgeInsets.symmetric(vertical: 8.h),
      color: Colors.grey[300],
    );
  }
}

class TempPost extends StatelessWidget {
  const TempPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PostHeader(),
              SizedBox(
                height: 12.h,
              ),
              Text(
                  """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."""),
              SizedBox(
                height: 12.h,
              ),
              Image.asset(
                "assets/dummy.jpg",
                height: 300,
                width: 200,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
        SharedLink(),
      ],
    );
  }
}
