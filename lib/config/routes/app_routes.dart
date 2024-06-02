import 'package:compedia/features/forgot_password/forgot_password_route.dart';
import 'package:compedia/features/login/login_route.dart';
import 'package:compedia/features/onboarding/onboarding_route.dart';
import 'package:compedia/features/register/register_route.dart';
import 'package:compedia/features/splash/splash_page.dart';
import 'package:compedia/features/splash/splash_route.dart';
import 'package:compedia/features/welcome/welcome_route.dart';

class AppRoute {
  static String initialRoute = SplashPage.route;
  static final appPages = [
    ...splashRoute,
    ...loginRoute,
    ...onboardingRoute,
    ...registerRoute,
    ...forgotPasswordRoute,
    ...welcomeRoute,
  ];
}
