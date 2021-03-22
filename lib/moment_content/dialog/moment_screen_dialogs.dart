import 'package:flutter/material.dart';
import '../../globalWidgets/custom_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showAlertShareDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var theme = Theme.of(context).textTheme.subtitle1;
      return CustomAlertDialog(
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PaddingText(
                theme: theme,
                title: "Share with Friends",
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.h),
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
              PaddingText(
                theme: theme,
                title: "Repost",
              ),
            ],
          ));
    },
  );
}

class PaddingText extends StatelessWidget {
  const PaddingText({
    Key key,
    @required this.theme,
    this.title,
  }) : super(key: key);

  final TextStyle theme;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Text(
        "Share with Friends",
        style: theme,
      ),
    );
  }
}
