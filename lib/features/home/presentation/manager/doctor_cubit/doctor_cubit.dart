// import 'package:bloc/bloc.dart';
// import 'package:doc_doc_app/features/home/data/repo/home_repo.dart';
// import 'package:meta/meta.dart';

// import '../../../data/models/doctor_model.dart';

// part 'doctor_state.dart';

// class DoctorCubit extends Cubit<DoctorState> {
//   DoctorCubit(this._homeRepo) : super(DoctorInitial());

//   final HomeRepo _homeRepo;

//   Future<void> getAllDoctor() async {
//     emit(GetDoctorLoading());
//     var response = await _homeRepo.getAllDoctor();
//     print(response);

//     response.fold(
//       (failure) => emit(GetDoctorFailure(failure.apiErrorModel.message!)),
//       (doctorsList) => emit(
//         GetDoctorSuccess(
//           doctorsList: doctorsList,
//         ),
//       ),
//     );
//   }
// }
