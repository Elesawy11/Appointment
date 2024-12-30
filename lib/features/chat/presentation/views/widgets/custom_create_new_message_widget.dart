import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/widgets/custom_app_bar_widget.dart';
import '../../../../home/presentation/views/widgets/recommendation_app_text_and_icon.dart';
import 'custome_message_widget.dart';

class CustomCreateNewMessageWidget extends StatelessWidget {
  const CustomCreateNewMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 12.h, left: 17.w, right: 17.w),
              child: Column(
                children: [
                  const CustomAppBarWidget(
                    text: 'Create New Message',
                    icon: Icons.close,
                  ),
                  verticalSpace(32),
                  const CustomAppTextAndIcon(),
                  verticalSpace(24),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.66,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const CustomMessageWidget(
                          isHaveSubTitle: false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      child: SvgPicture.asset(
        Assets.addChat,
      ),
    );
  }
}
