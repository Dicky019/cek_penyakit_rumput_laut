import 'package:flutter/painting.dart';

/// [INFO]
/// Constant for colors to be used in the app with following the design system
class ColorApp {
  /// Primary
  static const Color primaryColor = Color(0xFF4A80FF);
  static const Color secondaryColor = Color(0xFF0CD1F9);

  /// Accent
  static const Color primaryTextColor = Color(0xFF4E4B66);
  static const Color secondaryTextColor = Color(0xFF8A8D9F);
  static const Color softWhite = Color(0xFFEFF0F6);
  static const Color white = Color(0xFFFFFFFF);

  /// Gradients
  static final gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      ColorApp.primaryColor.withOpacity(0.6),
      const Color(0xFF3462FF),
    ],
  );

  /// Slide 
  static const Color activeSlide = Color.fromRGBO(241, 242, 246, 0.3);
  static const Color nonActiveSlide = Color(0xFFF1F2F6);

  /// Button
  static const Color primaryButtonColor = Color(0xFFFFFAED);

  // Background
  static const Color primaryBackgroundColor = Color(0xFFF4F5F7);
}
