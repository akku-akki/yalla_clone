import 'package:flutter/material.dart';

class ReactionBottomBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;

  const ReactionBottomBar({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}
