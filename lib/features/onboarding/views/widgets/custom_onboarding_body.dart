import 'package:doc_doc_app/constants.dart';
import 'package:doc_doc_app/core/utils/color.dart';
import 'package:doc_doc_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOnboardingBody extends StatelessWidget {
  const CustomOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          logoOpacity,
          fit: BoxFit.fill,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(onboarding),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\n Appointment App',
            textAlign: TextAlign.center,
            style: Styles.font32Bold.copyWith(
              color: ColorManger.mainBlue,
            ),
          ),
        ),
      ],
    );
  }
}
