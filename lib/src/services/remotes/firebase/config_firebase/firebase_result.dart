import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_result.freezed.dart';

@freezed
class FirebaseResult<T> with _$FirebaseResult<T> {
  const factory FirebaseResult.successFirebase(T data) = SuccessFirebase<T>;

  const factory FirebaseResult.failureFirebase(
    FirebaseException error,
    StackTrace stackTrace,
  ) = FailureFirebase<T>;
}
