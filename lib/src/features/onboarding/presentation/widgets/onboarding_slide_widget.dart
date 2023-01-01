import '../../../../../core/core.dart';

class OnboardingSlideWidget extends StatelessWidget {
  const OnboardingSlideWidget(this.length, this.index, {super.key});
  final int length;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        length,
        (i) => Row(
          children: [
            dot(i),
            if (i + 1 != length) Gap.customGapWidth(10),
          ],
        ),
      ),
    );
  }

  Widget dot(int i) {
    return Container(
      height: SizeApp.h12,
      width: SizeApp.w12,
      decoration: BoxDecoration(
        color: index == i ? ColorApp.activeSlide : ColorApp.nonActiveSlide,
        borderRadius: BorderRadius.circular(12.r),
      ),
    );
  }
}
