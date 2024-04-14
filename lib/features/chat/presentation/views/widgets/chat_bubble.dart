import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({
    super.key,
    // required this.message,
  });
  // final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            alignment: WrapAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 2.w),
                child: Text(
                  'Friend Chat Bubble',
                  style: Styles.font14Regular,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, left: 8.w),
                child: Text(
                  DateFormat.jm().format(DateTime.now()).toString(),
                  style: Styles.font12Regular.copyWith(
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatBubleFriend extends StatelessWidget {
  const ChatBubleFriend({
    super.key,
    // required this.message,
  });
  // final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: ColorManager.mainBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            alignment: WrapAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 2),
                child: Text(
                  'My Chat Bubble',
                  style: Styles.font14Regular.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8),
                child: Text(
                  DateFormat.jm().format(DateTime.now()).toString(),
                  style: Styles.font12Regular.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
