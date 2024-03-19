// import 'package:doc_doc_app/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/utils/color.dart';
// import '../../../../../core/utils/font_weight_helper.dart';
// import '../../../../../core/utils/spacer.dart';
// import '../../../../../core/utils/styles.dart';
// import '../../../../../core/widgets/app_text_button.dart';

// class CustomShowModelButtonSheet extends StatefulWidget {
//   const CustomShowModelButtonSheet({
//     super.key,
//   });

//   @override
//   State<CustomShowModelButtonSheet> createState() =>
//       _CustomShowModelButtonSheetState();
// }

// class _CustomShowModelButtonSheetState
//     extends State<CustomShowModelButtonSheet> {
//   bool isChosen = false;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         showModalBottomSheet(
//           backgroundColor: Colors.white,
//           context: context,
//           builder: (context) {
//             return SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: 14.w,
//                     top: 34.h,
//                     bottom: MediaQuery.of(context).viewInsets.bottom),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: Column(
//                     children: [
//                       verticalSpace(32),
//                       Text(
//                         'Sort By',
//                         style: Styles.font18Bold.copyWith(
//                           fontWeight: FontWeightHelper.semiBold,
//                         ),
//                       ),
//                       verticalSpace(32),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Speciality',
//                           style: Styles.font16Semibold.copyWith(
//                             fontWeight: FontWeightHelper.medium,
//                           ),
//                         ),
//                       ),
//                       verticalSpace(24),
//                       SizedBox(
//                         height: 42.h,
//                         child: ListView.builder(
//                           itemCount: specialistDoctorList.length,
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   isChosen = !isChosen;
//                                 });
//                               },
//                               child: Padding(
//                                 padding: EdgeInsets.only(left: 12.w),
//                                 child: Container(
//                                   padding:
//                                       EdgeInsets.symmetric(horizontal: 8.w),
//                                   constraints: BoxConstraints(minWidth: 65.w),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(24.r),
//                                       color: isChosen
//                                           ? ColorManager.mainBlue
//                                           : ColorManager.grey),
//                                   child: Center(
//                                     child: Text(
//                                       specialistDoctorList[index][1],
//                                       textAlign: TextAlign.center,
//                                       style: Styles.font14Regular
//                                           .copyWith(color: Colors.white),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                       verticalSpace(56),
//                       Padding(
//                         padding: EdgeInsets.only(right: 24.w, left: 10.w),
//                         child: AppTextButton(
//                           text: 'Done',
//                           onPressed: () {},
//                         ),
//                       ),
//                       verticalSpace(40)
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         );
//       },
//       child: Image.asset(
//         barSort,
//         width: 24.w,
//         height: 24.h,
//       ),
//     );
//   }
// }
