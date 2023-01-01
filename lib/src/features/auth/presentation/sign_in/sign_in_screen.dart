import '../../../../../core/core.dart';
import 'sign_in_controller.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(signInControllerProvider.notifier);
    final state = ref.watch(signInControllerProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SignInWidget(
          title: 'Welcome back!',
          subTitle: 'sign in to continue.',
          titleTextBottom: 'Do not have account? ',
          subTitleTextBottom: 'Sign up!',
          onTapTextBottom: controller.toSignUp,
          onTapApple: (contex) {},
          onTapFacebook: (contex) {},
          onTapGoogle: controller.google,
          onTapSignIn: controller.signIn,
          emailC: controller.emailC,
          passwordC: controller.passwordC,
          isLoadingSignIn: state.isLoading,
          isLoadingApple: state.isLoading,
          isLoadingFacebook: state.isLoading,
          isLoadingGoogle: state.isLoading,
          validatorEmail: controller.validatorNull,
          validatorPassword: controller.validatorNull,
        ),
      ),
    );
  }
}
