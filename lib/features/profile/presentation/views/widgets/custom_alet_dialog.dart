import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      actionsAlignment: MainAxisAlignment.center,
      title: Center(
        child: Text(
          'Logout',
          style: Styles.font16Semibold.copyWith(
            fontWeight: FontWeight.w600,
            color: ColorManager.darkBlue,
          ),
        ),
      ),
      content: SizedBox(
        width: 238.w,
        child: Text(
          'You’ll need to enter your username and password next time you want to login',
          style: Styles.font14Regular,
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        Container(
          height: 50.h,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: ColorManager.grayC2,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Text(
                    'Cancel',
                    style: Styles.font16Semibold.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorManager.mainBlue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 0.5.w,
                child: const VerticalDivider(),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.pop();
                    context.pushReplacement(Routes.loginView);
                  },
                  child: Text(
                    'Logout',
                    style: Styles.font16Semibold.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
