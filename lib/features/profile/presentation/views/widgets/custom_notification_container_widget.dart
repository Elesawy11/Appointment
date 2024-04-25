import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
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
              child: Switch(
                value: isActive,
                onChanged: (value) {
                  isActive = value;
                  setState(() {});
                },
                activeColor: Colors.white,
                activeTrackColor: ColorManager.mainBlue,
                inactiveTrackColor: ColorManager.greyD9,
                inactiveThumbColor: Colors.white,
                trackOutlineColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
