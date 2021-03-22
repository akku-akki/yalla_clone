import 'package:flutter/material.dart';
import 'package:yalla_clone/utils/export_utils.dart';
import '../../globalWidgets/custom_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var theme = Theme.of(context).textTheme.subtitle1;
      return CustomAlertDialog(
          content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Share with Friends",
            style: theme,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "Report",
            style: theme,
          ),
        ],
      ));
    },
  );
}
