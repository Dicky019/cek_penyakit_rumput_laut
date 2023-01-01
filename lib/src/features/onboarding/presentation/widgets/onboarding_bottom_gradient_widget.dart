import '../../../../../core/core.dart';

class OnboardingBottomGradientWidget extends StatelessWidget {
  const OnboardingBottomGradientWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeApp.customHeight(497),
      width: SizeApp.customWidth(375),
      decoration: BoxDecoration(
        gradient: ColorApp.gradient,
      ),
    );
  }
}
