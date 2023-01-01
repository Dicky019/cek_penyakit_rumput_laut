import '../../../../../core/core.dart';

class OnboardingHeaderWidget extends StatelessWidget {
  const OnboardingHeaderWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.isLast = false,
    required this.onTap,
  }) : super(key: key);

  final String title, subTitle;
  final bool isLast;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: SizeApp.customHeight(400),
          width: SizeApp.customWidth(375),
          decoration: BoxDecoration(
            color: ColorApp.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.r),
              bottomRight: Radius.circular(50.r),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TypographyApp.title.copyWith(fontSize: 30.sp),
              ),
              Gap.customGapHeight(22),
              Text(
                subTitle,
                style: TypographyApp.body,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        if (isLast)
          Positioned(
            bottom: SizeApp.customHeight(35),
            left: SizeApp.customWidth(30),
            right: SizeApp.customWidth(30),
            child: ButtonWidget(
              title: 'Continue',
              onTap: onTap,
            ),
          )
      ],
    );
  }
}
