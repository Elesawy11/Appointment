import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'book_appointment_body.dart';
import 'custom_doctor_definition.dart';
import 'custom_doctor_item.dart';

class BookingInformationWidget extends StatelessWidget {
  const BookingInformationWidget({
    super.key,
    required this.widget,
  });

  final BookAppointmentBody widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(text: 'Booking Information'),
        verticalSpace(24),
        const CustomListTile(
          title: 'Date & Time',
          subtitle: 'Wednesday, 08 May 2023 \n 08.30 AM',
          image: Assets.dateTime,
        ),
        const CustomListTile(
          title: 'Appointment Type',
          subtitle: 'In Person',
          image: Assets.appointmentType,
        ),
        verticalSpace(32),
        const TextTitle(text: 'Doctor Information'),
        verticalSpace(12),
        CustomDoctorItem(doctorModel: widget.doctorModel),
        verticalSpace(32),
        const TextTitle(text: 'Payment Information'),
        verticalSpace(32),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          height: 120.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: ColorManager.grayED,
              )),
          child: Column(
            children: [
              const PaymentInfoWidget(
                title: 'Subtotal',
                subtitle: '\$4694',
              ),
              verticalSpace(6),
              const PaymentInfoWidget(
                title: 'Tax',
                subtitle: '\$250',
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextTitle(text: 'Payment Total'),
                  TextTitle(text: '\$4944'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class PaymentInfoWidget extends StatelessWidget {
  const PaymentInfoWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Subtotal',
          style: Styles.font14Regular,
        ),
        Text('\$4694',
            style: Styles.font14Regular.copyWith(
              fontWeight: FontWeightHelper.semiBold,
            )),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.grayED,
          ),
        ),
      ),
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        leading: SvgPicture.asset(
          image,
          width: 40.w,
          height: 40.h,
        ),
        title: Text(
          title,
          style: Styles.font14Regular.copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: Styles.font12Regular.copyWith(
            color: ColorManager.grey75,
          ),
        ),
      ),
    );
  }
}
