import '../../../core/core.dart';

class RoutersService extends GoRouter {
  RoutersService({
    required super.initialLocation,
    required super.routes,
    super.debugLogDiagnostics = true,
    super.errorBuilder,
  });
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    // final authRepository = ref.read(authRepositoryProvider);

    return RoutersService(
      initialLocation: RoutesApp.splash.path,
      routes: [
        GoRoute(
          path: RoutesApp.splash.path,
          name: RoutesApp.splash.name,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: RoutesApp.onboarding.path,
          name: RoutesApp.onboarding.name,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: RoutesApp.signIn.path,
          name: RoutesApp.signIn.name,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: RoutesApp.signUp.path,
          name: RoutesApp.signUp.name,
          builder: (context, state) => const SignUpScreen(),
        ),
      ],
    );
  },
);
