import 'package:flutter/material.dart';

const String logo = 'assets/svg_image/logo.svg';
const String logoOpacity = 'assets/svg_image/logo_opacity.svg';
const String home = 'assets/svg_image/home.svg';
const String message = 'assets/svg_image/message.svg';
const String calendar = 'assets/svg_image/calendar.svg';

const String onboarding = 'assets/image/onboarding.png';
const String bookImage = 'assets/image/book_image.png';
const String brain = 'assets/image/Brain.png';
const String general = 'assets/image/icon.png';
const String account = 'assets/image/account.png';
const String barSort = 'assets/image/sort.png';
const String calendarTick = 'assets/image/calendar_tick.png';

const List<List<dynamic>> specialistDoctorList = [
  ['assets/image/cardiology.png', 'Cardiology', 1],
  ['assets/image/dermatology.png', 'Dermatology', 2],
  ['assets/image/Brain.png', 'Neurology', 3],
  ['assets/image/orthopedics.png', 'Orthopedics', 4],
  ['assets/image/pediatrics.png', 'Pediatrics', 5],
  ['assets/image/gynecology.png', 'Gynecology', 6],
  ['assets/image/ophthalmology.png', 'Ophthalmology', 7],
  ['assets/image/urology.png', 'Urology', 8],
  ['assets/image/gastroenterology.png', 'Gastroenterology', 9],
  ['assets/image/psychiatry.png', 'Psychiatry', 10],
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
