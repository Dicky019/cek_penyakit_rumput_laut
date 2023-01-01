// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Onboarding {
  String get title => throw _privateConstructorUsedError;
  String get subTitle =>
      throw _privateConstructorUsedError; // required SvgGenImage image,
  double get imageHeight => throw _privateConstructorUsedError;
  double get imageWidth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingCopyWith<Onboarding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingCopyWith<$Res> {
  factory $OnboardingCopyWith(
          Onboarding value, $Res Function(Onboarding) then) =
      _$OnboardingCopyWithImpl<$Res, Onboarding>;
  @useResult
  $Res call(
      {String title, String subTitle, double imageHeight, double imageWidth});
}

/// @nodoc
class _$OnboardingCopyWithImpl<$Res, $Val extends Onboarding>
    implements $OnboardingCopyWith<$Res> {
  _$OnboardingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? imageHeight = null,
    Object? imageWidth = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingCopyWith<$Res>
    implements $OnboardingCopyWith<$Res> {
  factory _$$_OnboardingCopyWith(
          _$_Onboarding value, $Res Function(_$_Onboarding) then) =
      __$$_OnboardingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, String subTitle, double imageHeight, double imageWidth});
}

/// @nodoc
class __$$_OnboardingCopyWithImpl<$Res>
    extends _$OnboardingCopyWithImpl<$Res, _$_Onboarding>
    implements _$$_OnboardingCopyWith<$Res> {
  __$$_OnboardingCopyWithImpl(
      _$_Onboarding _value, $Res Function(_$_Onboarding) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? imageHeight = null,
    Object? imageWidth = null,
  }) {
    return _then(_$_Onboarding(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      imageHeight: null == imageHeight
          ? _value.imageHeight
          : imageHeight // ignore: cast_nullable_to_non_nullable
              as double,
      imageWidth: null == imageWidth
          ? _value.imageWidth
          : imageWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Onboarding extends _Onboarding {
  _$_Onboarding(
      {required this.title,
      this.subTitle =
          'Reference site about Lorem\nIpsum, giving information origins\nas well as a random,',
      required this.imageHeight,
      required this.imageWidth})
      : super._();

  @override
  final String title;
  @override
  @JsonKey()
  final String subTitle;
// required SvgGenImage image,
  @override
  final double imageHeight;
  @override
  final double imageWidth;

  @override
  String toString() {
    return 'Onboarding(title: $title, subTitle: $subTitle, imageHeight: $imageHeight, imageWidth: $imageWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Onboarding &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.imageHeight, imageHeight) ||
                other.imageHeight == imageHeight) &&
            (identical(other.imageWidth, imageWidth) ||
                other.imageWidth == imageWidth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subTitle, imageHeight, imageWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingCopyWith<_$_Onboarding> get copyWith =>
      __$$_OnboardingCopyWithImpl<_$_Onboarding>(this, _$identity);
}

abstract class _Onboarding extends Onboarding {
  factory _Onboarding(
      {required final String title,
      final String subTitle,
      required final double imageHeight,
      required final double imageWidth}) = _$_Onboarding;
  _Onboarding._() : super._();

  @override
  String get title;
  @override
  String get subTitle;
  @override // required SvgGenImage image,
  double get imageHeight;
  @override
  double get imageWidth;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingCopyWith<_$_Onboarding> get copyWith =>
      throw _privateConstructorUsedError;
}
