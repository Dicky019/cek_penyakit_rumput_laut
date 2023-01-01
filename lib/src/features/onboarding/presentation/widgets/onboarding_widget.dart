import '../../../../../core/core.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.listOnboarding,
    this.onPageChanged,
    required this.pageController,
    // required this.length,
    required this.index,
    required this.onTap,
  });
  final List<Onboarding> listOnboarding;
  final void Function(int)? onPageChanged;
  final PageController pageController;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          onPageChanged: onPageChanged,
          padEnds: false,
          itemCount: listOnboarding.length,
          itemBuilder: (context, index) {
            return mainOnboarding(
              listOnboarding[index],
              listOnboarding.getLast(index),
            );
          },
        ),
        Positioned(
          bottom: SizeApp.customHeight(30),
          right: SizeApp.customWidth(30),
          child: OnboardingSlideWidget(
            listOnboarding.length,
            index,
          ),
        ),
      ],
    );
  }

  Stack mainOnboarding(Onboarding onboarding, bool isLast) {
    return Stack(
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        const Align(
          alignment: Alignment.bottomCenter,
          child: OnboardingBottomGradientWidget(),
        ),
        OnboardingHeaderWidget(
          title: onboarding.title,
          subTitle: onboarding.subTitle,
          isLast: isLast,
          onTap: onTap,
        ),
        Positioned(
          bottom: SizeApp.customHeight(-44),
          right: SizeApp.customWidth(-91),
          child: const OnboardingEllipseWidget(),
        ),
        Positioned(
          bottom: SizeApp.customHeight(-96),
          left: SizeApp.customWidth(-14),
          child: const OnboardingEllipseWidget(),
        ),
        // Positioned(
        //   bottom: SizeApp.customHeight(30),
        //   left: SizeApp.customWidth(30),
        //   child: onboarding.image.svg(
        //     height: SizeApp.customHeight(onboarding.imageHeight),
        //     width: SizeApp.customWidth(onboarding.imageWidth),
        //   ),
        // ),
      ],
    );
  }
}
