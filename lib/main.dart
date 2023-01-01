import 'core/core.dart';
import 'src/app.dart';

void main() async {
  await init();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await hiveInit();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
