import '../../../../../../core/core.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    super.key,
    required this.fullName,
    required this.email,
    required this.password,
    required this.onTapBack,
    required this.checkboxValue,
    required this.titleButton,
    required this.onTapButton,
    required this.titleTextBottom,
    required this.subTitleTextBottom,
    required this.checkboxoOnChanged,
    required this.validatorFullName,
    required this.validatorEmail,
    required this.validatorPassword,
  });

  final TextEditingController fullName, email, password;
  final void Function(BuildContext context) onTapBack;
  final bool checkboxValue;
  final String titleButton;
  final void Function(BuildContext context) onTapButton;
  final String titleTextBottom, subTitleTextBottom;
  final void Function(bool?) checkboxoOnChanged;
  final String? Function(String? value) validatorFullName,
      validatorEmail,
      validatorPassword;

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.h40,
          SignUpHeaderWidget(
            onTap: () => onTapBack(context),
          ),
          Gap.h40,
          SignUpFormWidget(
            email: email,
            fullName: fullName,
            password: password,
            validatorEmail: validatorEmail,
            validatorFullName: validatorFullName,
            validatorPassword: validatorPassword,
          ),
          Gap.h4,
          SignUpPrivacyPolicy(
            checkboxValue: checkboxValue,
            onChanged: checkboxoOnChanged,
          ),
          Gap.h16,
          ButtonWidget(
            title: titleButton,
            onTap: () => onTapButton(context),
          ),
          const Spacer(),
          AuthTextBottomWidget(
            title: 'Already have an account? ',
            subTitle: 'Sign in!',
            onTap: () => onTapBack(context),
          ),
          Gap.h28,
        ],
      ),
    );
  }
}
