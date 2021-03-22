import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yalla_clone/topic/topic.dart';
import 'package:yalla_clone/utils/custom_size.dart';
import 'create_topic/create_topic.dart';
import 'package:device_preview/device_preview.dart';
import 'moment_content/moment_content.dart';
import 'post.dart';
import 'topic_profile/topic_profile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(), // Wrap your app
//   ),
// );

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenUtilInit(
        designSize: Size(750, 1334),
        allowFontScaling: false,
        builder: () {
          return AppEntry();
        },
      ),
    );
  }
}

class AppEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // CustomSize.initialize(
    //     MediaQuery.of(context).size.height, MediaQuery.of(context).size.width);

    // ----- CreateTopic Size Completed

    //  return CreateTopic(
    //    bodyStyle: Theme.of(context).textTheme.caption,
    //    titleStyle: Theme.of(context).textTheme.bodyText1,
    //  );
// ------------------------------------------------
    // return PostsList();

    return MomentContent(
      post: SocialPost(
        showSharedLink: false,
      ),
    );

    // ----- CreateTopic Size Completed

    // return TopicProfile();

    // ----- CreateTopic Size Completed

    // return TopicScreen(
    //   topicTitle: "Healthy Thoughts Healthy Thoughts Healthy Thoughts",
    // );
  }
}
