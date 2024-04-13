import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/custom_doctor_definition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 24.r,
          ),
        ),
        title: const Column(
          children: [
            TextTitle(text: 'Dr. Randy Wigham'),
            TextSubTitle(text: 'Online'),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: SvgPicture.asset(
              Assets.videoCall,
              width: 40.w,
              height: 40.h,
            ),
          ),
        ],
        elevation: 0.5,
      ),
      body: const SafeArea(
        child: ChatViewBody(),
      ),
    );
  }
}
