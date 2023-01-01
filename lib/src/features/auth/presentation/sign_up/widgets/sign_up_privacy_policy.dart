import '../../../../../../core/core.dart';

class SignUpPrivacyPolicy extends StatelessWidget {
  const SignUpPrivacyPolicy({
    Key? key, required this.checkboxValue, required this.onChanged,
  }) : super(key: key);

  final bool checkboxValue;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: checkboxValue,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.r),
              ),
              fillColor: MaterialStateProperty.resolveWith(
                (states) {
                  // If the button is pressed, return green, otherwise blue
                  if (states.contains(MaterialState.pressed)) {
                    return ColorApp.primaryColor;
                  }
                  return ColorApp.primaryColor;
                },
              ),
              onChanged: onChanged,
            ), //
            Text(
              "By creating an account you agree to",
              style: TypographyApp.body,
            ),
          ],
        ),
        Text(
          "our Terms of Service and Privacy Policy",
          style: TypographyApp.body,
        ),
      ],
    );
  }
}