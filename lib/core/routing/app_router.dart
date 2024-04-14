import 'package:doc_doc_app/core/routing/routes.dart';
import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/features/chat/presentation/views/chat_view.dart';
import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_doc_app/features/home/data/repo/home_repo.dart';
import 'package:doc_doc_app/features/home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import 'package:doc_doc_app/features/home/presentation/views/book_appointment_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/booking_appointment_details.dart';
import 'package:doc_doc_app/features/home/presentation/views/doctor_details.dart';
import 'package:doc_doc_app/app_home.dart';
import 'package:doc_doc_app/features/home/presentation/views/notification_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/recommendation_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/speciality_view.dart';
import 'package:doc_doc_app/features/login/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:doc_doc_app/features/signup/presentation/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../features/chat/presentation/views/messages_view.dart';
import '../../features/home/presentation/views/calender_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/profile_view.dart';

abstract class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  // static final shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');
  static final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.onboardingView,
    // redirect: (context, state) async {
    //   final SharedPreferences pref = await SharedPreferences.getInstance();
    //   if (pref.getBool('isLogin') ?? false) {
    //     return Routes.chatView;
    //   } else {
    //     return Routes.onboardingView;
    //   }
    // },
    routes: [
      GoRoute(
        path: Routes.onboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => AppHome(
          navigationshell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.homeView,
                builder: (context, state) => BlocProvider(
                  create: (context) =>
                      DoctorCubit(getIt.get<HomeRepo>())..getAllDoctor(),
                  child: const HomeView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.messagesView,
                builder: (context, state) => const MessagesView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.calenderView,
                builder: (context, state) => const CalenderView(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profileView,
                builder: (context, state) => const ProfileView(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routes.signupView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: Routes.specialityView,
        builder: (context, state) => const SpecialityView(),
      ),
      GoRoute(
        path: Routes.notificationView,
        builder: (context, state) => const NotificationView(),
      ),
      GoRoute(
        path: Routes.recommendationView,
        builder: (context, state) => RecommendationView(
          doctorList: state.extra as List<DoctorModel>,
        ),
        routes: [
          GoRoute(
            path: Routes.doctorDetailsView,
            builder: (context, state) => DoctorDetailsView(
              doctorModel: state.extra as DoctorModel,
            ),
          ),
          GoRoute(
            path: Routes.bookAppointmentView,
            builder: (context, state) => BookAppointmentView(
              doctorModel: state.extra as DoctorModel,
            ),
          ),
          GoRoute(
            path: Routes.bookingAppointmentDetails,
            builder: (context, state) => const BookingAppointmentDetails(),
          ),
        ],
      ),
      GoRoute(
        path: Routes.chatView,
        builder: (context, state) => const ChatView(),
      ),
    ],
  );
}
