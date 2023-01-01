import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    String? avatar,
    String? username,
    String? email,
  }) = _UserResponse;
}
