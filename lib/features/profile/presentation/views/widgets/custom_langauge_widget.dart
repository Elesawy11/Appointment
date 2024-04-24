import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class CustomLanguageWidget extends StatefulWidget {
  const CustomLanguageWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomLanguageWidget> createState() => _CustomLanguageWidgetState();
}

class _CustomLanguageWidgetState extends State<CustomLanguageWidget> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: ColorManager.grayED,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: Styles.font14Regular,
            ),
            Transform.scale(
              scaleY: 0.8,
              scaleX: 0.9,
              child: IconButton(
                onPressed: () {
                  isActive = !isActive;
                  setState(() {});
                },
                icon: isActive
                    ? Icon(
                        Icons.radio_button_checked_outlined,
                        color: ColorManager.mainBlue,
                        size: 24.r,
                      )
                    : Icon(
                        Icons.radio_button_unchecked_outlined,
                        color: ColorManager.grey9E,
                        size: 24.r,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}