import 'package:flutter/material.dart';
import 'package:yalla_clone/post.dart';
import 'widgets/reactionBar.dart';
import './widgets/bottom_chat_bar.dart';
import './widgets/full_post_description_silver.dart';

class MomentContent extends StatefulWidget {
  /// Post as a --WIDGET-- need to be passed to display it initially
  /// and then size need to be recalculated and passet to [FullPostDescriptionSliver]
  /// as expanded Height
  final Widget post;

  const MomentContent({Key key, this.post}) : super(key: key);
  @override
  _MomentContentState createState() => _MomentContentState();
}

class _MomentContentState extends State<MomentContent> {
  PageController _controller;
  bool isPostHeightCalulated = false;

  final GlobalKey _postKey = GlobalKey();
  double _newPostSize;
  Widget post;
  bool _keyboardVisible;

  /// After getting size new post widget can be constructed here
  getSize() {
    RenderBox _userPost = _postKey.currentContext.findRenderObject();
    _newPostSize = _userPost.size.height + 10;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getSize();
      // After calulating the height just pass height with whole post widget
      post = TempPost();
      isPostHeightCalulated = true;
      setState(() {});
    });
    _controller = PageController();
    ReactionState.selectedReaction.addListener(() {
      _controller.jumpToPage(ReactionState.currentReaction.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            !isPostHeightCalulated
                ? TempPost(
                    key: _postKey,
                  )
                : FullPostDescriptionSliver(
                    controller: _controller,
                    expandedHeight: _newPostSize,
                    post: post,
                  ),
            Column(
              children: [
                AppBar(
                  title: Text("Moment Content"),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                ),
                Spacer(),
                BottomChatBar(keyboardVisible: _keyboardVisible)
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    ReactionState.close();
    _controller.dispose();
    super.dispose();
  }
}
