import 'package:doc_doc_app/features/home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'custom_doctor_item.dart';

class CustomDoctorsListView extends StatelessWidget {
  const CustomDoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      DoctorCubit cubit = context.read<DoctorCubit>();
      return BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          return state is GetDoctorLoading
              ? Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.white.withOpacity(0.8),
                  child: Expanded(
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
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
                              clipBehavior: Clip.none,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: context
                                  .read<DoctorCubit>()
                                  .listOfDoctors
                                  .length,
                              itemBuilder: (context, index) {
                                return CustomDoctorItem(
                                  doctorModel: context
                                      .read<DoctorCubit>()
                                      .listOfDoctors[index],
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
