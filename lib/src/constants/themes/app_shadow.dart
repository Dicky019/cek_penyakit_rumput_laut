import 'package:flutter/material.dart';

/// [INFO]
/// Constant for shadows to be used in the app with following the design system
class ShadowApp {

  static final dropShadow = BoxShadow(
    color: Colors.black.withOpacity(0.05),
    blurRadius: 30,
    offset: const Offset(0, 0), // changes position of shadow
  );
  
}
