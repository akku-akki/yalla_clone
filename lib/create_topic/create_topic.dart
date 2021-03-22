import 'package:flutter/material.dart';
import './widget/export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateTopic extends StatelessWidget {
  /// If title text style for heading
  final TextStyle titleStyle;

  /// If boby text style for body

  final TextStyle bodyStyle;
  const CreateTopic(
      {Key key, @required this.titleStyle, @required this.bodyStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
        title: Text("Create Topic"),
      ),
      body: Stack(
        children: [
          ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: 24.w, vertical: 20.h),
            children: [
              Topics(titleStyle: titleStyle, bodyStyle: bodyStyle),
              SizedBox(height:  45.h),
              Requirements(titleStyle: titleStyle, bodyStyle: bodyStyle),
              SizedBox(height: 45.h),
              ResponsibilitiesOfTopicHosts(
                  titleStyle: titleStyle, bodyStyle: bodyStyle),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
          // Button for Creating Topic
          CreateTopicButton(
            onTap: () {},
          )
        ],
      ),
    );
  }
}
