import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_doctor_definition.dart';

class CustomPaymentWidget extends StatelessWidget {
  const CustomPaymentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 398.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextTitle(text: 'Payment Option'),
          verticalSpace(24),
          SizedBox(
            height: 372.h,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: [
                PaymentOptionsWidget(
                  optionText: 'Credit Card',
                  isHaveOptions: true,
                  cardOptionsList: creditCardListOptions,
                ),
                const PaymentOptionsWidget(
                  optionText: 'Bank Transfer',
                ),
                const PaymentOptionsWidget(
                  optionText: 'Paypal',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentOptionsWidget extends StatefulWidget {
  const PaymentOptionsWidget({
    super.key,
    required this.optionText,
    this.isHaveOptions = false,
    this.cardOptionsList,
  });
  final String optionText;
  final bool isHaveOptions;

  final List<List<String>>? cardOptionsList;

  @override
  State<PaymentOptionsWidget> createState() => _PaymentOptionsWidgetState();
}

bool isChozen = false;

class _PaymentOptionsWidgetState extends State<PaymentOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isChozen = !isChozen;
        setState(() {});
      },
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        dense: true,
        leading: Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(
              color: ColorManager.mainBlue,
            ),
          ),
          child: isChozen == true
              ? Icon(
                  Icons.circle,
                  size: 10.r,
                  color: ColorManager.mainBlue,
                )
              : null,
        ),
        title: Text(
          widget.optionText,
          style: Styles.font14Regular.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        subtitle: widget.isHaveOptions == true
            ? SizedBox(
                height: 220.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.cardOptionsList!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      titleAlignment: ListTileTitleAlignment.threeLine,
                      leading: SvgPicture.asset(
                        widget.cardOptionsList![index][0],
                        width: 24.w,
                        height: 24.h,
                      ),
                      title: Text(
                        widget.cardOptionsList![index][1],
                        style: Styles.font14Regular,
                      ),
                    );
                  },
                ),
              )
            : null,
      ),
    );
  }
}

List<List<String>> creditCardListOptions = [
  [Assets.masterCard, 'Master Card'],
  [Assets.americanExpress, 'American Express'],
  [Assets.capitalOne, 'Capital One'],
  [Assets.barclays, 'Barclays'],
];
