import '../../../../../core/core.dart';
import 'splash_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    ref.read(splashControllerProvider).init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: ColorApp.gradient,
        ),
        child: const Center(
          child: IconAppWidget(),
        ),
      ),
    );
  }
}