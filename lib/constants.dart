import 'package:doc_doc_app/core/utils/assets.dart';
import 'package:flutter/material.dart';



const List<List<dynamic>> specialistDoctorList = [
  [Assets.cardiology, 'Cardiology', 1],
  [Assets.dermatology, 'Dermatology', 2],
  [Assets.brain, 'Neurology', 3],
  [Assets.orthopedics, 'Orthopedics', 4],
  [Assets.pediatrics, 'Pediatrics', 5],
  [Assets.gynecology, 'Gynecology', 6],
  [Assets.ophthalmology, 'Ophthalmology', 7],
  [Assets.urology, 'Urology', 8],
  [Assets.gastroenterology, 'Gastroenterology', 9],
  [Assets.psychiatry, 'Psychiatry', 10],
];

const shimmerGradient = LinearGradient(
  colors: [
    Color(0xFFEBEBF4),
    Color(0xFFF4F4F4),
    Color(0xFFEBEBF4),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
