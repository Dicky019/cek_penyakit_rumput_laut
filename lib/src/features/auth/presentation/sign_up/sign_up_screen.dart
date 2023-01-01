import '../../../../../core/core.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.read(signUpControllerProvider.notifier);
    final state = ref.watch(signUpControllerProvider);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SignUpWidget(
          fullName: controller.fullNameC,
          email: controller.emailC,
          password: controller.passwordC,
          onTapBack: controller.toSignIn,
          checkboxValue: state.checkboxValue,
          titleButton: "Sign up",
          onTapButton: controller.signUp,
          titleTextBottom: 'Already have an account? ',
          subTitleTextBottom: 'Sign in!',
          checkboxoOnChanged: controller.onChanged,
          validatorEmail: controller.validatorNull,
          validatorFullName: controller.validatorNull,
          validatorPassword: controller.validatorNull,
        ),
      ),
    );
  }
}
