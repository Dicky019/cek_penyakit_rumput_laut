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
    return predictedClass == "bukan rumput laut"
        ? PenyakitRumputLaut._bukanRumputLaut(map, image)
        : PenyakitRumputLaut._rumputLaut(map, image);
  }

  factory PenyakitRumputLaut._bukanRumputLaut(
    Map<String, dynamic> map,
    File image,
  ) {
    final predictedClass = map['predicted_class'] as String?;
    final predicted = map['reason'] as String?;
    return PenyakitRumputLaut(
      predictedAccuracy: 100,
      predictedClass: predictedClass,
      solusi: (predicted?.toUpperCase() ?? "-"),
      image: image,
    );
  }

  factory PenyakitRumputLaut._rumputLaut(
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
