
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import '../../../../home/presentation/views/widgets/custom_doctor_item.dart';

class MyAppointmentCompletedWidget extends StatelessWidget {
  const MyAppointmentCompletedWidget({
    super.key, required this.mainText, this.color,
  });
final String mainText;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                width: 344.w,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: ColorManager.lighterGray,
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          mainText,
                          style: Styles.font12Regular.copyWith(
                            color:color?? Colors.green,
                          ),
                        ),
                        subtitle: Text(
                          'Wed, 17 May | 08.30 AM',
                          style: Styles.font12Regular.copyWith(
                            color: ColorManager.hardGrey,
                          ),
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          size: 24.r,
                          color: ColorManager.greyOpacity,
                        ),
                      ),
                    ),
                    verticalSpace(18),
                    CustomDoctorItem(
                      doctorModel: context
                          .read<DoctorCubit>()
                          .listOfDoctors[index],
                    )
                  ],
                ),
              );
            },
            itemCount:
                context.read<DoctorCubit>().listOfDoctors.length,
          ),
        ),
      ],
    );
  }
}