import 'package:flutter/material.dart';
import 'package:yalla_clone/moment_content/dialog/moment_screen_dialogs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomChatBar extends StatelessWidget {
  const BottomChatBar({
    Key key,
    @required bool keyboardVisible,
  })  : _keyboardVisible = keyboardVisible,
        super(key: key);

  final bool _keyboardVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      color: Colors.white,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ChatBarButton(
            icon: _keyboardVisible ? Icons.alternate_email : Icons.ios_share,
            onTap: _keyboardVisible ? () {} : () {},
          ),
          SizedBox(width: 4.w,),
          Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey[300])),
                margin: EdgeInsets.symmetric(vertical: 14.h),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(color: Colors.black),
                  decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Say something about this',
                      focusColor: Colors.grey[200],
                      border: InputBorder.none),
                ),
              )),
          ChatBarButton(
            icon: _keyboardVisible
                ? Icons.emoji_emotions_outlined
                : Icons.thumb_up_alt_outlined,
            onTap: _keyboardVisible ? () {} : () {},
          ),
          ChatBarButton(
            icon: _keyboardVisible
                ? Icons.send_rounded
                : Icons.card_giftcard_outlined,
            onTap: _keyboardVisible ? () {} : () {},
          ),
        ],
      ),
    );
  }
}

class ChatBarButton extends StatelessWidget {
  const ChatBarButton({
    Key key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showAlertShareDialog(context);
        },
        child: Padding(
          padding: EdgeInsets.only( left: 12.w),
          child: Icon(icon),
        ));
  }
}
