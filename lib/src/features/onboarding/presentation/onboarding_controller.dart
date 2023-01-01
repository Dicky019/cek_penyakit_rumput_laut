import 'dart:developer';

import '../../../../core/core.dart';
import 'onboarding_state.dart';

class OnboardingControllerNotifier extends StateNotifier<OnboardingState> {
  OnboardingControllerNotifier({required this.hiveService})
      : super(const OnboardingState());

  final HiveService hiveService;
  final pageController = PageController();

  final listOnboarding = [
    Onboarding(
      title: "Welcome to Alesha",
      // image: "Assets.images.medicalResearch",
      imageWidth: 444,
      imageHeight: 300,
    ),
    Onboarding(
      title: "Find Best Doctors",
      // image: "Assets.images.medicine,",
      imageWidth: 503,
      imageHeight: 355,
    ),
    Onboarding(
      title: "Get Fitness Trips",
      // image: "Assets.images.yoga",
      imageHeight: 272,
      imageWidth: 248,
    ),
  ];

  void onPageChanged(int index) {
    state = state.copyWith(value: AsyncData(index));
    log("$index && ${state.value.value}", name: "onPageChanged");
  }

  void toHome(BuildContext context) {
    hiveService.saveOnboardingDone(true);
    // context.pushReplacement(
    //   RoutesApp.dasboard.path,
    // );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

final onboardingControllerProvider =
    StateNotifierProvider<OnboardingControllerNotifier, OnboardingState>(
  (ref) {
    return OnboardingControllerNotifier(
      hiveService: ref.read(hiveServiceProvider),
    );
  },
);
