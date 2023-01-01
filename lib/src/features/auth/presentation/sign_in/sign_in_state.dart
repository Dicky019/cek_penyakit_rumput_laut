import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInState {
  final AsyncValue<bool> value;
  // final AsyncValue<bool> value;

  const SignInState({
    this.value = const AsyncData(false),
  });

  SignInState copyWith({
    AsyncValue<bool>? value,
  }) {
    return SignInState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
  
}
