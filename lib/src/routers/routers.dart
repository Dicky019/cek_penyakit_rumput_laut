enum RoutesApp {
  // init
  splash(path: "/splash", name: "Splash Screen"),
  onboarding(path: "/onboarding", name: "Login"),

  // auth
  signIn(path: "/signin", name: "sign in"),
  signUp(path: "/signup", name: "sign up"),

  // home
  home(path: "/", name: "Home"),
  ;

  const RoutesApp({required this.path, required this.name});
  final String path, name;

  static String get splashPath => RoutesApp.splash.path;
  static String get onboardingPath => RoutesApp.onboarding.path;
  static String get signInPath => RoutesApp.signIn.path;
  static String get signUpPath => RoutesApp.signUp.path;
  static String get homePath => RoutesApp.home.path;
}
