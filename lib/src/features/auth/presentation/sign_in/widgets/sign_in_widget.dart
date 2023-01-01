import '../../../../../../core/core.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    Key? key,
    required this.onTapTextBottom,
    required this.onTapSignIn,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapFacebook,
    required this.title,
    required this.subTitle,
    required this.titleTextBottom,
    required this.subTitleTextBottom,
    required this.emailC,
    required this.passwordC,
    required this.isLoadingSignIn,
    required this.isLoadingGoogle,
    required this.isLoadingApple,
    required this.isLoadingFacebook,
    required this.validatorEmail,
    required this.validatorPassword,
  }) : super(key: key);

  final void Function(BuildContext context) onTapTextBottom,
      onTapSignIn,
      onTapGoogle,
      onTapApple,
      onTapFacebook;
  final String title, subTitle;
  final String titleTextBottom, subTitleTextBottom;
  final TextEditingController emailC, passwordC;
  final bool isLoadingSignIn,
      isLoadingGoogle,
      isLoadingApple,
      isLoadingFacebook;

  final String? Function(String?) validatorEmail, validatorPassword;

  @override
  Widget build(BuildContext context) {
    return PaddingWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap.customGapHeight(53),
          const Center(
            child: IconAppWidget(
              color: ColorApp.primaryColor,
            ),
          ),
          Gap.h40,
          const AuthTextWidget(
            title: 'Welcome back!',
            subTitle: 'sign in to continue.',
          ),
          Gap.h40,
          // form
          SignInFormWidget(
            emailC: emailC,
            passwordC: passwordC,
            validatorEmail: validatorEmail,
            validatorPassword: validatorPassword,
          ),
          Gap.customGapHeight(18),
          SignInButtomWidget(
            onTapSignIn: () => onTapSignIn(context),
            onTapApple: () => onTapApple(context),
            onTapFacebook: () => onTapFacebook(context),
            onTapGoogle: () => onTapGoogle(context),
            isLoadingSignIn: isLoadingSignIn,
            isLoadingApple: isLoadingApple,
            isLoadingFacebook: isLoadingFacebook,
            isLoadingGoogle: isLoadingGoogle,
          ),
          const Spacer(),
          AuthTextBottomWidget(
            title: 'Do not have account? ',
            subTitle: 'Sign up!',
            onTap: () => onTapTextBottom(context),
          ),
          Gap.h28,
        ],
      ),
    );
  }
}
