import '../../../../../../core/core.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({
    super.key,
    required this.emailC,
    required this.passwordC,
    required this.validatorEmail,
    required this.validatorPassword,
  });

  final TextEditingController emailC, passwordC;
  final String? Function(String?) validatorEmail, validatorPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFieldWidget.withIcon(
          textEditingController: emailC,
          hintText: 'Email',
          // icon: Assets.icons.iconEmail,
        ),
        Gap.customGapHeight(15),
        TextFieldWidget.withIcon(
          textEditingController: passwordC,
          hintText: 'Password',
          // icon: Assets.icons.iconLock,
        ),
      ],
    );
  }
}
