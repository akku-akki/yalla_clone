import 'dart:ui';
import './widgets/fade_on_scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yalla_clone/post.dart';
import './widgets/topic_flexible_background.dart';
import './widgets/sliver_appbar_delegate.dart';
import './dialog/appbar_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopicScreen extends StatefulWidget {
  final String topicTitle;
  const TopicScreen({Key key, this.topicTitle}) : super(key: key);
  @override
  _TopicScreenState createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DefaultTabController(
            length: 2,
            child: NestedScrollView(
                controller: scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.transparent,
                      expandedHeight: MediaQuery.of(context).size.height * 0.38,
                      pinned: true,
                      primary: true,
                      flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          collapseMode: CollapseMode.pin,
                          background: TopicFlexibleBackground(
                            topicTitle: widget.topicTitle,
                            imagePath: "assets/dummy.jpg",
                          )),
                    ),
                    SliverPersistentHeader(
                      delegate: SliverAppBarDelegate(
                        TabBar(
                          labelColor: Colors.black87,
                          unselectedLabelColor: Colors.grey,
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(width: 3),
                              insets: EdgeInsets.symmetric(horizontal: 150.w)),
                          tabs: [
                            Tab(text: "Popular"),
                            Tab(text: "Latest"),
                          ],
                        ),
                      ),
                      pinned: true,
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    PostsList(),
                    PostsList(),
                  ],
                )),
          ),
          _buildFadingAppbar(context),
          Positioned(
              top: 54.h,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.white,
                ),
              )),
          Positioned(
              top: 54.h,
              right: 8.w,
              child: IconButton(
                onPressed: () {
                  showAlertDialog(context);
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              )),
          _buildFloatingActionButton(context),
        ],
      ),
    );
  }

  /// Fading Appbar on user scroll
  Column _buildFadingAppbar(BuildContext context) {
    return Column(
      children: [
        FadeOnScroll(
          scrollController: scrollController,
          fullOpacityOffset: 200,
          child: AppBar(
            leading: const SizedBox(
              width: 40,
            ),
            leadingWidth: 35,
            elevation: 0.0,
            backgroundColor: Colors.teal,
            title: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                widget.topicTitle,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
            actions: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                margin: EdgeInsets.only(
                    right: 60, top: 24.h, bottom: 24.h),
                child: Text(
                  "Following",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.teal),
                ),
              )
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }

  /// Floating ActionButton For creating post
  Positioned _buildFloatingActionButton(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: MediaQuery.of(context).size.height * 0.1,
      child: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: Icon(Icons.edit_sharp),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
