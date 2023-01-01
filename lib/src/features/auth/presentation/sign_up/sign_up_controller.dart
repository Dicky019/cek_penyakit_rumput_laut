import '../../../../../core/core.dart';
import 'sign_up_state.dart';

class SignUpControllerNotifier extends StateNotifier<SignUpState>
    with Validation {
  SignUpControllerNotifier(this._authService) : super(const SignUpState());

  final AuthService _authService;

  final fullNameC = TextEditingController();
  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  void toSignIn(BuildContext context) {
    context.push(
      RoutesApp.signIn.path,
    );
  }

  void listenController() {
    stream.listen((event) {
      /// to home
    });
  }

  void onChanged(bool? value) {
    state = state.copyWith(checkboxValue: value);
  }

  Future signUp(BuildContext context) async {
    state = state.copyWith(value: const AsyncLoading());
    final result = await _authService.signUp(
      email: emailC.text,
      password: passwordC.text,
      fullName: fullNameC.text,
    );
    result.when(
      successFirebase: (data) {
        state = state.copyWith(value: const AsyncData(true));
        // context.pushReplacement(
        //   RoutesApp.dasboard.path,
        // );
      },
      failureFirebase: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
  }

  @override
  void dispose() {
    fullNameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }
}

final signUpControllerProvider =
    StateNotifierProvider.autoDispose<SignUpControllerNotifier, SignUpState>(
  (ref) {
    return SignUpControllerNotifier(ref.read(authServiceProvider))..listenController();
  },
);
