import '../../../../../core/core.dart';

class AuthTextBottomWidget extends StatelessWidget {
  const AuthTextBottomWidget({
    Key? key, required this.title, required this.subTitle, required this.onTap,
  }) : super(key: key);

  final String title,subTitle;
  final  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TypographyApp.body,
        ),
        ButtonTextWidget(
          onTap: onTap,
          title: subTitle,
          textStyle: TypographyApp.body.copyWith(
            color: ColorApp.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}