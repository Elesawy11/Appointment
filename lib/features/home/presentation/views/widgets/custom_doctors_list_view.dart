import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/features/home/data/repo/home_repo.dart';
import 'package:doc_doc_app/features/home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_doctor_item.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({super.key, this.clipBehavior, this.physics});
  final Clip? clipBehavior;
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorCubit(getIt.get<HomeRepo>())..getAllDoctor(),
      child: BlocBuilder<DoctorCubit, DoctorState>(
        builder: (context, state) {
          return state is GetDoctorLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.white.withOpacity(0.8),
                  child: Expanded(
                    child: ListView.builder(
                        clipBehavior: clipBehavior ?? Clip.none,
                        padding: EdgeInsets.zero,
                        physics:
                            physics ?? const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                  ),
                )
              : state is GetDoctorFailure
                  ? Center(
                      child: Text(state.errMessage),
                    )
                  : state is GetDoctorSuccess
                      ? Expanded(
                          child: ListView.builder(
                              clipBehavior: clipBehavior ?? Clip.none,
                              padding: EdgeInsets.zero,
                              physics: physics ??
                                  const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
