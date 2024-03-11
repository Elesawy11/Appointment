part of 'doctor_cubit.dart';

@immutable
sealed class DoctorState {}

final class DoctorInitial extends DoctorState {}

final class GetDoctorLoading extends DoctorState {}

final class GetDoctorFailure extends DoctorState {
  final String errMessage;

  GetDoctorFailure(this.errMessage);
}

final class GetDoctorSuccess extends DoctorState {
  final List<DoctorModel> doctorsList;

  GetDoctorSuccess({required this.doctorsList});
}
