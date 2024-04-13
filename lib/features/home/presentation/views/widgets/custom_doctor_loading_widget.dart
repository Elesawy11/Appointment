import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/spacer.dart';
import 'custom_doctor_image.dart';

class CustomDoctorLoadingWidget extends StatelessWidget {
  const CustomDoctorLoadingWidget({
    super.key,
    required this.shimmerGradient,
  });

  final LinearGradient shimmerGradient;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: shimmerGradient,
      child: Expanded(
        child: ListView.builder(
            clipBehavior: Clip.none,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.17,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomDoctorImage(
                      imageUrl:
                          'https://hips.hearstapps.com/hmg-prod/images/portrait-of-a-happy-young-doctor-in-his-clinic-royalty-free-image-1661432441.jpg?crop=0.66698xw:1xh;center,top&resize=1200:*',
                    ),
                    horizontalSpace(16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.black),
                            width: 200.w,
                            height: 20.h,
                          ),
                          verticalSpace(8),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.black),
                            width: 100.w,
                            height: 20.h,
                          ),
                          verticalSpace(12),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.black),
                            width: 150.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
