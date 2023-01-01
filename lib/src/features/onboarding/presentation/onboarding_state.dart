import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingState {
  final AsyncValue<int> value;

  const OnboardingState({
    this.value = const AsyncData(0),
  });

  OnboardingState copyWith({
    AsyncValue<int>? value,
  }) {
    return OnboardingState(
      value: value ?? this.value,
    );
  }
}
