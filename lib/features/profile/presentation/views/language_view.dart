import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/color.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'widgets/custom_langauge_widget.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CustomAppBarWidget(text: 'Language'),
            ),
            verticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppTextFormField(
                contentPadding: EdgeInsets.only(left: 18.w, right: 12.w),
                backgroundColor: ColorManager.whiteF5,
                hintText: 'search',
                validator: (value) {},
                prefixIcon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: ColorManager.grayC2,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) => CustomLanguageWidget(
                  text: languages[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> languages = [
  'Arab',
  'English',
  'France',
  'Arab',
  'English',
  'France',
  'Arab',
  'English',
  'France',
];
