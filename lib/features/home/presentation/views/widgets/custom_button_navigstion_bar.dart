import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key, this.onDestinationSelected, required this.selectedIndex,
  });
final Function(int)? onDestinationSelected;
final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 90.h,
      elevation: 0,
      backgroundColor: Colors.white,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      onDestinationSelected: onDestinationSelected,
      selectedIndex:selectedIndex ,
      destinations: <Widget>[
        NavigationDestination(
          icon: SvgPicture.asset(
            home,
            width: 24.w,
            height: 24.h,
          ),
          label: 'Home',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            message,
            width: 24.w,
            height: 24.h,
          ),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            calendar,
            width: 24.w,
            height: 24.h,
          ),
          label: 'Calendar',
        ),
        NavigationDestination(
          icon: Image.asset(
            account,
            width: 24.w,
            height: 24.h,
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
