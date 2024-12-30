import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/font_weight_helper.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class CustomDoctorDefinition extends StatelessWidget {
  const CustomDoctorDefinition({
    super.key,
    required this.doctorModel,
  });

  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(text: 'About me'),
        verticalSpace(12),
        const TextSubTitle(
          text:
              'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
        ),
        verticalSpace(24),
        const TextTitle(text: 'Working Time'),
        verticalSpace(12),
        const TextSubTitle(
          text: 'Monday - Friday, 08.00 AM - 20.00 PM',
        ),
        verticalSpace(24),
        const TextTitle(text: 'STR'),
        verticalSpace(12),
        const TextSubTitle(text: '4726482464'),
        verticalSpace(24),
        const TextTitle(
          text: 'Pengalaman Praktik',
        ),
        verticalSpace(12),
        Text(
          'RSPAD Gatot Soebroto',
          style: Styles.font14Regular.copyWith(
            color: ColorManager.darkBlue,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        verticalSpace(12),
        const TextSubTitle(text: '2017 - sekarang'),
      ],
    );
  }
}

//==================================================================
class DoctorLocation extends StatelessWidget {
  const DoctorLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TextTitle(text: 'Practice Place'),
        verticalSpace(12),
        const TextSubTitle(text: 'Cairo, Egypt'),
        verticalSpace(18),
        const TextTitle(text: 'Location Map'),
        verticalSpace(12),
        ClipRRect(
          borderRadius: BorderRadius.circular(24.r),
          child: Image.asset(
            Assets.map,
            width: 328.w,
            height: 258.h,
          ),
        ),
      ],
    );
  }
}

class DoctorReviews extends StatelessWidget {
  const DoctorReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Image.asset(
              Assets.review,
              width: 40.w,
              height: 40.h,
            ),
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitle(text: 'Jane Cooper'),
              TextSubTitle(text: 'Today'),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingBar(
                onRatingUpdate: (value) {},
                minRating: 1,
                maxRating: 5,
                initialRating: 5,
                itemSize: 24.r,
                ignoreGestures: true,
                ratingWidget: RatingWidget(
                  full: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  half: const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  empty: const Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                ),
              ),
              verticalSpace(10),
              const TextSubTitle(
                text:
                    'As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.',
              ),
            ],
          ),
        );
      },
    );
  }
}

List<String> texts = ['About', 'Location', 'Rewiews'];

class TextSubTitle extends StatelessWidget {
  const TextSubTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.font14Regular.copyWith(
        color: ColorManager.grey75,
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Styles.font16Semibold.copyWith(
        color: ColorManager.darkBlue,
      ),
    );
  }
}
