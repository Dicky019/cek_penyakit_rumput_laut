import 'package:cek_penyakit_rumput_laut/models/onboarding.dart';
import 'package:cek_penyakit_rumput_laut/helper/local_storage.dart';
import 'package:cek_penyakit_rumput_laut/widgets/onboarding/onboarding_title_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../pages/home.dart';

class OnBoardingSliderWidget extends StatelessWidget {
  final List<OnBoardingModel> listOnBoarding;

  const OnBoardingSliderWidget({
    super.key,
    required this.listOnBoarding,
  });

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Home',
      onFinish: () async {
        await LocalStorageHelper.setOnboardingFinis();
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: Colors.lightGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: Colors.lightGreen,
          fontWeight: FontWeight.w600,
        ),
      ),
      controllerColor: Colors.lightGreen,
      totalPage: listOnBoarding.length,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: listOnBoarding
          .map(
            (e) => Image.asset(
              e.imagePath,
              height: 400,
            ),
          )
          .toList(),
      speed: 1.8,
      pageBodies: List.generate(
        listOnBoarding.length,
        (index) => OnBoardingTitleDescWidget(
          primary: Colors.lightGreen,
          title: listOnBoarding[index].title,
          desc: listOnBoarding[index].description,
          isLastPage: (listOnBoarding.length - 1) == index,
        ),
      ),
    );
  }
}
