import '../../../../core/core.dart';

class SplashControllerNotifier {
  SplashControllerNotifier({required this.isOnboardingDone});

  final bool isOnboardingDone;

  void init(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (isOnboardingDone) {
          // context.pushReplacement(RoutesApp.dasboard.path);
        } else {
          context.pushReplacement(RoutesApp.onboarding.path);
        }
      },
    );
  }
}

final splashControllerProvider =
    Provider.autoDispose<SplashControllerNotifier>((ref) {
  return SplashControllerNotifier(
    isOnboardingDone: ref.read(hiveServiceProvider).getIsOnboardingDone,
  );
});
