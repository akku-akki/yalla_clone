import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:yalla_clone/globalWidgets/topic_square_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicInfoCard extends StatelessWidget {
  const TopicInfoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(bottom: 8.h),
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 28.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TopicSquareProfile(
                  path: 'assets/dummy.jpg',
                  size: 100.h,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Healthy Thoughts",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text("Language:English",
                          style: Theme.of(context).textTheme.caption),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomExpansion(
              collapsedText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              expandedText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              title: "Healthy Thoughts",
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomExpansion(
              collapsedText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              expandedText:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              title: "Topic Rules",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomExpansion extends StatelessWidget {
  const CustomExpansion({
    Key key,
    this.title,
    this.expandedText,
    this.collapsedText,
  }) : super(key: key);

  final String title;
  final String expandedText;
  final String collapsedText;

  @override
  Widget build(BuildContext context) {
    return ExpandablePanel(
      theme: ExpandableThemeData(
          iconPadding: EdgeInsets.zero,
          headerAlignment: ExpandablePanelHeaderAlignment.center),
      expanded: Text(expandedText,
          softWrap: true,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.caption),
      collapsed: Text(collapsedText,
          maxLines: 2,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.caption),
      header: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.left,
      ),
    );
  }
}
