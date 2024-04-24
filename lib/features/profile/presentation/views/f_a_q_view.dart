import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/expansion_list_widget.dart';

class FAQView extends StatelessWidget {
  const FAQView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const CustomAppBarWidget(text: 'FAQ'),
                ),
                verticalSpace(32),
                const ExpandsionListWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
