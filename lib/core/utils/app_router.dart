import 'package:doc_doc_app/core/utils/routes.dart';
import 'package:doc_doc_app/core/utils/service_locator.dart';
import 'package:doc_doc_app/features/home/data/models/doctor_model.dart';
import 'package:doc_doc_app/features/home/data/repo/home_repo.dart';
import 'package:doc_doc_app/features/home/presentation/manager/doctor_cubit/doctor_cubit.dart';
import 'package:doc_doc_app/features/home/presentation/views/home_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/notification_view.dart';
import 'package:doc_doc_app/features/recommendation/presentation/views/recommendation_view.dart';
import 'package:doc_doc_app/features/home/presentation/views/speciality_view.dart';
import 'package:doc_doc_app/features/login/presentation/views/login_view.dart';
import 'package:doc_doc_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:doc_doc_app/features/signup/presentation/views/signup_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onboardingView,
        builder: (context, state) => const OnboardingView(),
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
        path: Routes.homeView,
        builder: (context, state) => BlocProvider(
          create: (context) => DoctorCubit(getIt.get<HomeRepo>())..getAllDoctor(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: Routes.specialityView,
        builder: (context, state) => const SpecialityView(),
      ),
      GoRoute(
          path: Routes.recommendationView,
          builder: (context, state) =>
              RecommendationView(doctorList: state.extra as List<DoctorModel>)),
      GoRoute(
        path: Routes.notificationView,
        builder: (context, state) => const NotificationView(),
      ),
    ],
  );
}
