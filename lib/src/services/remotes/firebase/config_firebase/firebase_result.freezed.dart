// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirebaseResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successFirebase,
    required TResult Function(FirebaseException error, StackTrace stackTrace)
        failureFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successFirebase,
    TResult? Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successFirebase,
    TResult Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessFirebase<T> value) successFirebase,
    required TResult Function(FailureFirebase<T> value) failureFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessFirebase<T> value)? successFirebase,
    TResult? Function(FailureFirebase<T> value)? failureFirebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessFirebase<T> value)? successFirebase,
    TResult Function(FailureFirebase<T> value)? failureFirebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseResultCopyWith<T, $Res> {
  factory $FirebaseResultCopyWith(
          FirebaseResult<T> value, $Res Function(FirebaseResult<T>) then) =
      _$FirebaseResultCopyWithImpl<T, $Res, FirebaseResult<T>>;
}

/// @nodoc
class _$FirebaseResultCopyWithImpl<T, $Res, $Val extends FirebaseResult<T>>
    implements $FirebaseResultCopyWith<T, $Res> {
  _$FirebaseResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessFirebaseCopyWith<T, $Res> {
  factory _$$SuccessFirebaseCopyWith(_$SuccessFirebase<T> value,
          $Res Function(_$SuccessFirebase<T>) then) =
      __$$SuccessFirebaseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessFirebaseCopyWithImpl<T, $Res>
    extends _$FirebaseResultCopyWithImpl<T, $Res, _$SuccessFirebase<T>>
    implements _$$SuccessFirebaseCopyWith<T, $Res> {
  __$$SuccessFirebaseCopyWithImpl(
      _$SuccessFirebase<T> _value, $Res Function(_$SuccessFirebase<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessFirebase<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessFirebase<T> implements SuccessFirebase<T> {
  const _$SuccessFirebase(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'FirebaseResult<$T>.successFirebase(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFirebase<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFirebaseCopyWith<T, _$SuccessFirebase<T>> get copyWith =>
      __$$SuccessFirebaseCopyWithImpl<T, _$SuccessFirebase<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successFirebase,
    required TResult Function(FirebaseException error, StackTrace stackTrace)
        failureFirebase,
  }) {
    return successFirebase(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successFirebase,
    TResult? Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
  }) {
    return successFirebase?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successFirebase,
    TResult Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
    required TResult orElse(),
  }) {
    if (successFirebase != null) {
      return successFirebase(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessFirebase<T> value) successFirebase,
    required TResult Function(FailureFirebase<T> value) failureFirebase,
  }) {
    return successFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessFirebase<T> value)? successFirebase,
    TResult? Function(FailureFirebase<T> value)? failureFirebase,
  }) {
    return successFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessFirebase<T> value)? successFirebase,
    TResult Function(FailureFirebase<T> value)? failureFirebase,
    required TResult orElse(),
  }) {
    if (successFirebase != null) {
      return successFirebase(this);
    }
    return orElse();
  }
}

abstract class SuccessFirebase<T> implements FirebaseResult<T> {
  const factory SuccessFirebase(final T data) = _$SuccessFirebase<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessFirebaseCopyWith<T, _$SuccessFirebase<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureFirebaseCopyWith<T, $Res> {
  factory _$$FailureFirebaseCopyWith(_$FailureFirebase<T> value,
          $Res Function(_$FailureFirebase<T>) then) =
      __$$FailureFirebaseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FirebaseException error, StackTrace stackTrace});
}

/// @nodoc
class __$$FailureFirebaseCopyWithImpl<T, $Res>
    extends _$FirebaseResultCopyWithImpl<T, $Res, _$FailureFirebase<T>>
    implements _$$FailureFirebaseCopyWith<T, $Res> {
  __$$FailureFirebaseCopyWithImpl(
      _$FailureFirebase<T> _value, $Res Function(_$FailureFirebase<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$FailureFirebase<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FirebaseException,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$FailureFirebase<T> implements FailureFirebase<T> {
  const _$FailureFirebase(this.error, this.stackTrace);

  @override
  final FirebaseException error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'FirebaseResult<$T>.failureFirebase(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureFirebase<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureFirebaseCopyWith<T, _$FailureFirebase<T>> get copyWith =>
      __$$FailureFirebaseCopyWithImpl<T, _$FailureFirebase<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successFirebase,
    required TResult Function(FirebaseException error, StackTrace stackTrace)
        failureFirebase,
  }) {
    return failureFirebase(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successFirebase,
    TResult? Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
  }) {
    return failureFirebase?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successFirebase,
    TResult Function(FirebaseException error, StackTrace stackTrace)?
        failureFirebase,
    required TResult orElse(),
  }) {
    if (failureFirebase != null) {
      return failureFirebase(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessFirebase<T> value) successFirebase,
    required TResult Function(FailureFirebase<T> value) failureFirebase,
  }) {
    return failureFirebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessFirebase<T> value)? successFirebase,
    TResult? Function(FailureFirebase<T> value)? failureFirebase,
  }) {
    return failureFirebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessFirebase<T> value)? successFirebase,
    TResult Function(FailureFirebase<T> value)? failureFirebase,
    required TResult orElse(),
  }) {
    if (failureFirebase != null) {
      return failureFirebase(this);
    }
    return orElse();
  }
}

abstract class FailureFirebase<T> implements FirebaseResult<T> {
  const factory FailureFirebase(
          final FirebaseException error, final StackTrace stackTrace) =
      _$FailureFirebase<T>;

  FirebaseException get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$FailureFirebaseCopyWith<T, _$FailureFirebase<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
