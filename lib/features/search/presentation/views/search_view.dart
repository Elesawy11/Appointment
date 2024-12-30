import 'package:doc_doc_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import '../../../home/data/models/doctor_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key, required this.doctorList});
  final List<DoctorModel> doctorList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(
          doctorList: doctorList,
        ),
      ),
    );
  }
}
