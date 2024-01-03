import 'package:flutter/material.dart';

import 'package:cek_penyakit_rumput_laut/constants/data.dart';
import 'package:cek_penyakit_rumput_laut/widgets/onboarding/onboarding_slider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnBoardingSliderWidget(
        listOnBoarding: DataConstants.listOnBoarding);
  }
}
