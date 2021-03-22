import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/new_followers.dart';
import 'widgets/topic_admin.dart';
import 'widgets/topic_host.dart';
import 'widgets/topic_info_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopicProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Topic Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: ListView(
          children: [
            TopicInfoCard(),
            TopicHost(),
            TopicAdmin(),
            NewFollowers()
          ],
        ),
      ),
    );
  }
}
