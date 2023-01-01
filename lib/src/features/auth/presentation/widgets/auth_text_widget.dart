import '../../../../../core/core.dart';

class AuthTextWidget extends StatelessWidget {
  const AuthTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          style: TypographyApp.title,
        ),
        Text(
          subTitle,
          style: TypographyApp.body.copyWith(
            color: ColorApp.secondaryTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}
