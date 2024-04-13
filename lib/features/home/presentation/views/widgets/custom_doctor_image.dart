import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDoctorImage extends StatelessWidget {
  const CustomDoctorImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: CachedNetworkImage(
        width: 110.w,
        height: 110.h,
        fit: BoxFit.fill,
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}