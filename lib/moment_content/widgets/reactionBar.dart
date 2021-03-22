import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SelectedReaction { COMMENTS, LIKES, GIFTS }

class ReactionState {
  static ValueNotifier<SelectedReaction> selectedReaction =
      ValueNotifier(SelectedReaction.COMMENTS);

  static void setReaction(SelectedReaction reaction) {
    selectedReaction.value = reaction;
  }

  static SelectedReaction get currentReaction => selectedReaction.value;

  static void close() {
    selectedReaction.dispose();
  }
}

class ReactionBar extends StatelessWidget {
  const ReactionBar({
    Key key,
    this.reaction,
  }) : super(key: key);

  final SelectedReaction reaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(
                flex: 1,
              ),
              ReactionButton(
                icon: Icons.comment_bank_outlined,
                count: "12",
                reaction: SelectedReaction.COMMENTS,
                onSelectCallback: () {
                  ReactionState.setReaction(SelectedReaction.COMMENTS);
                },
              ),
              Spacer(flex: 6,),
              ReactionButton(
                icon: Icons.thumb_up_sharp,
                count: "3",
                reaction: SelectedReaction.LIKES,
                onSelectCallback: () {
                  ReactionState.setReaction(SelectedReaction.LIKES);
                },
              ),
              Spacer(
                flex: 1,
              ),
              ReactionButton(
                icon: Icons.card_giftcard_outlined,
                count: "3",
                reaction: SelectedReaction.GIFTS,
                onSelectCallback: () {
                  ReactionState.setReaction(SelectedReaction.GIFTS);
                },
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }
}

class ReactionButton extends StatelessWidget {
  const ReactionButton({
    Key key,
    this.count,
    this.icon,
    this.onSelectCallback,
    this.reaction,
  }) : super(key: key);

  final String count;
  final IconData icon;
  final SelectedReaction reaction;

  /// Action To perform on Selection
  final VoidCallback onSelectCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelectCallback();
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ValueListenableBuilder(
                valueListenable: ReactionState.selectedReaction,
                builder: (context, value, child) {
                  return Icon(
                    icon,
                    size: 40.w,
                    color: reaction == value ? Colors.blue : Colors.grey,
                  );
                },
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(count),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: ReactionState.selectedReaction,
            builder: (context, value, child) {
              return Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(
                  top: 20.h,
                  left: 20.w,
                  right: 20.w,
                ),
                width: 50.w,
                height: 3,
                color: reaction == value ? Colors.blue : Colors.white,
              );
            },
          )
        ],
      ),
    );
  }
}
