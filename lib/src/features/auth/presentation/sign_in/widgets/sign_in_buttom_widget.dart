import '../../../../../../core/core.dart';

class SignInButtomWidget extends StatelessWidget {
  const SignInButtomWidget({
    super.key,
    required this.onTapSignIn,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapFacebook,
    this.isLoadingSignIn = false,
    this.isLoadingGoogle = false,
    this.isLoadingApple = false,
    this.isLoadingFacebook = false,
  });

  final void Function() onTapSignIn, onTapGoogle, onTapApple, onTapFacebook;
  final bool isLoadingSignIn,
      isLoadingGoogle,
      isLoadingApple,
      isLoadingFacebook;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonTextWidget(
              onTap: () {},
              textStyle: TypographyApp.body.copyWith(
                color: ColorApp.primaryColor,
              ),
              title: 'Forgot Password?',
            ),
          ],
        ),
        Gap.customGapHeight(18),
        ButtonWidget(
          title: "Sign in",
          onTap: onTapSignIn,
          isLoading: isLoadingSignIn,
        ),
      ],
    );
  }
}
