import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'features/home/presentation/views/widgets/custom_floating_action_button.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key, required this.navigationshell});
  final StatefulNavigationShell navigationshell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: const CustomFloatingActionButton(),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentPageIndex = index;
      //     });
      //   },
      //   selectedIndex: currentPageIndex,
      // ),
      body: navigationshell,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationshell.currentIndex,
        onTap: (int index) => navigationshell.goBranch(index),
        items: [
          _BootmNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.home,
            ),
            label: 'Home',
            index: 0,
          ),
          _BootmNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.message,
            ),
            label: 'Message',
            index: 1,
          ),
          _BootmNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.calendar,
            ),
            label: 'Calender',
            index: 2,
          ),
          _BootmNavigationBarItem(
            icon: Image.asset(
              Assets.account,
              width: 24.w,
              height: 24.h,
            ),
            label: 'Profile',
            index: 3,
          ),
          // BottomNavigationBarItem(
          //   icon: SvgPicture.asset(Assets.message),
          //   label: 'Message',
          // ),
          // BottomNavigationBarItem(
          //   icon: SvgPicture.asset(Assets.calendar),
          //   label: 'Calender',
          // ),
          // BottomNavigationBarItem(
          //   icon: Image.asset(
          //     Assets.account,
          //     width: 24.w,
          //     height: 24.h,
          //   ),
          //   label: 'Account',
          // ),
        ],
      ),
      // [
      //   SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //       child: const HomeViewBody(),
      //     ),
      //   ),
      //   SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //       child: const Center(
      //         child: Text('chat Screen'),
      //       ),
      //     ),
      //   ),
      //   SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //       child: const Center(
      //         child: Text('calendar Screen'),
      //       ),
      //     ),
      //   ),
      //   SafeArea(
      //     child: Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 16.w),
      //       child: const Center(
      //         child: Text('profile Screen'),
      //       ),
      //     ),
      //   ),
      // ][currentPageIndex],
    );
  }

  BottomNavigationBarItem _BootmNavigationBarItem({
    required Widget icon,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
