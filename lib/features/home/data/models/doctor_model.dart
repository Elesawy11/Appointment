import 'package:json_annotation/json_annotation.dart';

part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  final Specialization? specialization;
  final City city;
  @JsonKey(name: 'appoint_price')
  final int appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;

  DoctorModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.photo,
      required this.gender,
      required this.address,
      required this.description,
      required this.degree,
      required this.specialization,
      required this.city,
      required this.appointPrice,
      required this.startTime,
      required this.endTime});

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}

@JsonSerializable()
class Specialization {
  final int id;
  final String name;

  Specialization({required this.id, required this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Specialization? governrate;

  City({required this.id, required this.name, required this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
