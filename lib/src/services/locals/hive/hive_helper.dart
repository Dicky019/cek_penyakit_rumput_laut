import 'package:hive_flutter/hive_flutter.dart';

import '../../../constants/keys/hive_key.dart';

Future<void> hiveInit() async {
  await Hive.initFlutter();
  await Hive.openBox<bool>(HiveKey.isOnboardingDoneBox);
}

Future<void> hiveClose() async {
  await Hive.close();
}
