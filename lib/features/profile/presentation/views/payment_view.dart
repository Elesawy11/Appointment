import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/spacer.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:doc_doc_app/core/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              verticalSpace(16),
              const CustomAppBarWidget(text: 'Paymnet'),
              verticalSpace(32),
              Expanded(
                child: ListView.builder(
                  itemCount: paymentElement.length,
                  itemBuilder: (context, index) {
                    return CustomPaymentWidget(
                      title: paymentElement[index][0],
                      subtitle: paymentElement[index][1],
                      image: paymentElement[index][2],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPaymentWidget extends StatelessWidget {
  const CustomPaymentWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListTile(
        leading: SizedBox(
          width: 40.w,
          height: 40.h,
          child: FittedBox(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        title: Text(
          title,
          style: Styles.font14Regular.copyWith(
            color: ColorManager.darkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: Styles.font12Regular.copyWith(
            color: ColorManager.darkBlue,
          ),
        ),
        trailing: Text(
          'Connected',
          style: Styles.font14Regular.copyWith(
            color: ColorManager.mainBlue,
          ),
        ),
      ),
    );
  }
}

List<List<String>> paymentElement = [
  [
    'Paypal',
    '***** ***** ***** 37842',
    Assets.paypal,
  ],
  [
    'Master Card',
    '***** ***** ***** 37842',
    Assets.masterCard,
  ],
  [
    'Apple Pay',
    '***** ***** ***** 37842',
    Assets.applepay,
  ],
  [
    'Payoneer',
    '***** ***** ***** 37842',
    Assets.payoneer,
  ],
  [
    'Dana',
    '***** ***** ***** 37842',
    Assets.dana,
  ],
];
