import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../constants/keys/hive_key.dart';

class HiveService {
  final hiveIsOnboardingDone = Hive.box<bool>(HiveKey.isOnboardingDoneBox);

  /// Set Onboarding Done
  bool get getIsOnboardingDone =>
      hiveIsOnboardingDone.get(
        HiveKey.isOnboardingDoneBox,
      ) ??
      false;

  /// Set Onboarding Done
  void saveOnboardingDone(bool value) => hiveIsOnboardingDone.put(
        HiveKey.isOnboardingDoneBox,
        value,
      );

}

final hiveServiceProvider = Provider<HiveService>((ref) {
  return HiveService();
});
