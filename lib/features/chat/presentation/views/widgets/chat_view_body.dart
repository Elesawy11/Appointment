import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'chat_bubble.dart';
import 'custom_chat_buttom_bar.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.78,
              child: ListView.builder(
                reverse: true,
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return const ChatBuble();
                  } else {
                    return const ChatBubleFriend();
                  }
                },
              ),
            ),
            const CustomChatButtomBar(),
          ],
        ),
      ),
    );
  }
}
