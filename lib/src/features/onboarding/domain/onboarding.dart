import '../../../../core/core.dart';

part 'onboarding.freezed.dart';

@freezed
class Onboarding with _$Onboarding {
  const Onboarding._();
  factory Onboarding({
    required String title,
    @Default('Reference site about Lorem\nIpsum, giving information origins\nas well as a random,')
        String subTitle,
    // required SvgGenImage image,
    required double imageHeight,
    required double imageWidth,
  }) = _Onboarding;
}
