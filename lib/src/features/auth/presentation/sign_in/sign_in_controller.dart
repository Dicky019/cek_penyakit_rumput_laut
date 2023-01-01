import '../../../../../core/core.dart';
import 'sign_in_state.dart';

class SignInControllerNotifier extends StateNotifier<SignInState>
    with Validation {
  SignInControllerNotifier(this._authService) : super(const SignInState());

  final AuthService _authService;

  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  void toSignUp(BuildContext context) {
    context.push(
      RoutesApp.signUp.path,
    );
  }

  void listenController() {
    stream.listen((event) {
      /// to home
    });
  }

  Future signIn(BuildContext context) async {
    state = state.copyWith(value: const AsyncLoading());
    final result =
        await _authService.signIn(email: emailC.text, password: passwordC.text);
    result.when(
      successFirebase: (data) {
        state = state.copyWith(value: const AsyncData(true));
      },
      failureFirebase: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
  }

  Future google(BuildContext context) async {
    state = state.copyWith(value: const AsyncLoading());
    final result = await _authService.google();
    result.when(
      successFirebase: (data) {
        state = state.copyWith(value: const AsyncData(true));
      },
      failureFirebase: (error, stackTrace) {
        state = state.copyWith(value: AsyncError(error, stackTrace));
      },
    );
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }
}

final signInControllerProvider =
    StateNotifierProvider.autoDispose<SignInControllerNotifier, SignInState>(
  (ref) {
    return SignInControllerNotifier(ref.read(authServiceProvider))..listenController();
  },
);
