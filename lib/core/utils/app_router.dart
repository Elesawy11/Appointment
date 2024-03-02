import 'package:doc_doc_app/core/utils/routes.dart';
import 'package:doc_doc_app/features/onboarding/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.onboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
