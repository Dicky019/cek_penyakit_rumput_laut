import 'dart:io';

import 'package:cek_penyakit_rumput_laut/constants/data.dart';

class PenyakitRumputLaut {
  final double predictedAccuracy;
  final String? predictedClass;
  final String solusi;
  final File image;

  PenyakitRumputLaut({
    required this.predictedAccuracy,
    required this.predictedClass,
    required this.solusi,
    required this.image,
  });

  factory PenyakitRumputLaut.fromResult(
    Map<String, dynamic> map,
    File image,
  ) {
    final predictedClass = map['predicted_class'] as String?;
    return PenyakitRumputLaut(
      predictedAccuracy: map['predicted_accuracy'] as double,
      predictedClass: predictedClass,
      solusi:
          DataConstants.listSolusi[(predictedClass ?? "").toLowerCase()] ?? "-",
      image: image,
    );
  }
}
