import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/features/home/presentation/views/widgets/recommendation_app_text_and_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_create_new_message_widget.dart';
import 'custome_message_widget.dart';

class MessagesViewBody extends StatelessWidget {
  const MessagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Message',
                  textAlign: TextAlign.center,
                  style: Styles.font18Bold.copyWith(
                    fontWeight: FontWeightHelper.semiBold,
                  ),
                ),
              ),
              const CustomCreateNewMessageWidget(),
            ],
          ),
          verticalSpace(36),
          const CustomAppTextAndIcon(),
          verticalSpace(24),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.677,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 6,
              itemBuilder: (context, index) {
                return const CustomMessageWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
