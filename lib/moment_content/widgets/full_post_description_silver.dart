
import 'package:flutter/material.dart';
import 'package:yalla_clone/moment_content/widgets/commentList.dart';
import 'package:yalla_clone/moment_content/widgets/likes_list.dart';
import 'package:yalla_clone/moment_content/widgets/reaction_bar.dart';
import 'gifts_list.dart';
import 'reactionBar.dart';

class FullPostDescriptionSliver extends StatelessWidget {
  const FullPostDescriptionSliver({
    Key key,
    @required PageController controller,
    this.expandedHeight,
    this.post,
  })  : _controller = controller,
        super(key: key);

  /// Post to be shown in  Expanded Appbar for Sliver
  final Widget post;

  /// controller for reaction pages
  final PageController _controller;

  /// Expanded height for sliver appbar
  final double expandedHeight;
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      // physics: NeverScrollableScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            bottom: ReactionBottomBar(
              child: ReactionBar(),
            ),
            primary: true,
            // floating: false,
            pinned: true,
            expandedHeight: expandedHeight,
            shadowColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin, background: post),
          ),
        ];
      },
      body: ValueListenableBuilder(
        valueListenable: ReactionState.selectedReaction,
        builder: (context, value, child) {
          return PageView(
            controller: _controller,
            onPageChanged: (value) {
              ReactionState.setReaction(SelectedReaction.values[value]);
            },
            children: [
              const CommentsList(),
              const LikesList(),
              const GiftsList(),
            ],
          );
        },
      ),
    );
  }
}
