import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/features/home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import 'custom_doctor_item.dart';
import 'custom_doctor_loading_widget.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocBuilder(
        bloc: getIt.get<DoctorCubit>(),
        buildWhen: (previous, current) {
          return current is GetDoctorLoading ||
              current is GetDoctorFailure ||
              current is GetDoctorSuccess;
        },
        builder: (context, state) {
          return state is GetDoctorLoading
              ? const CustomDoctorLoadingWidget(
                  shimmerGradient: shimmerGradient,
                )
              : state is GetDoctorFailure
                  ? Center(
                      child: Text(state.errMessage),
                    )
                  : state is GetDoctorSuccess
                      ? Expanded(
                          child: ListView.builder(
                              clipBehavior: Clip.none,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.doctorsList.length,
                              itemBuilder: (context, index) {
                                return CustomDoctorItem(
                                  doctorModel: state.doctorsList[index],
                                );
                              }),
                        )
                      : const Center(
                          child: Text('Not Founded'),
                        );
        },
      );
    });
  }
}
