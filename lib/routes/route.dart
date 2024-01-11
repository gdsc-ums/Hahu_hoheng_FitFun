import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/home_binding.dart';
import 'package:hahu_hoheng_fitfun/bindings/quiz_binding.dart';
import 'package:hahu_hoheng_fitfun/bindings/login_binding.dart';
import 'package:hahu_hoheng_fitfun/views/login.dart';
import 'package:hahu_hoheng_fitfun/bindings/splash_binding.dart';
import 'package:hahu_hoheng_fitfun/views/signup.dart';
import '../bindings/signup_binding.dart';
import '../views/home.dart';
import '../views/quiz/quiz.dart';
import '../views/quiz/quiz_two.dart';
import '../views/splash.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
        name: RouteName.signup,
        page: () => const SignupView(),
        binding: SignupBinding(),
        transition: Transition.rightToLeft),
    GetPage(
      name: RouteName.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft
    ),
    GetPage(
      name: RouteName.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteName.quiz,
      page: () => const QuizView(),
      binding: QuizBinding(),
      transition: Transition.rightToLeft
    ),
    GetPage(
      name: RouteName.quizTwo,
      page: () => const QuizViewTwo(),
      transition: Transition.rightToLeft
    )
  ];
}
