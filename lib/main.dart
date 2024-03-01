import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:cek_penyakit_rumput_laut/helper/local_storage.dart';
import 'package:cek_penyakit_rumput_laut/pages/onboarding.dart';

import 'pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configLoading();
  final isOnboardingFinis = await LocalStorageHelper.isOnboardingFinis();
  log(isOnboardingFinis.toString(), name: "LocalStorage.isOnboardingFinis()");

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        // useMaterial3: true,
      ),
      home: isOnboardingFinis ? const HomePage() : const OnboardingPage(),
      builder: EasyLoading.init(),
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 3)
    ..indicatorType = EasyLoadingIndicatorType.chasingDots
    ..loadingStyle = EasyLoadingStyle.custom
    ..maskType = EasyLoadingMaskType.custom
    ..indicatorSize = 40
    ..boxShadow = [
      BoxShadow(
        color: Colors.lightGreen.shade100.withOpacity(0.2),
        spreadRadius: 3,
        blurRadius: 10,
        offset: const Offset(0, 1), // changes position of shadow
      ),
    ]
    ..progressColor = Colors.lightGreen
    ..backgroundColor = Colors.lightGreen.shade100
    ..indicatorColor = Colors.lightGreen.shade900
    ..textColor = Colors.black
    ..maskColor = Colors.lightGreen.shade100.withOpacity(0.3);
}
