import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpState {
  final AsyncValue<bool> value;
  final bool checkboxValue;

  const SignUpState({
    this.value = const AsyncData(false),
    this.checkboxValue = false,
  });

  SignUpState copyWith({AsyncValue<bool>? value, bool? checkboxValue}) {
    return SignUpState(
      value: value ?? this.value,
      checkboxValue: checkboxValue ?? this.checkboxValue,
    );
  }

  bool get isLoading => value.isLoading;
}
