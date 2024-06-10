import 'package:compedia/features/competition/competition_route.dart';
import 'package:compedia/features/comunity/comunity_route.dart';
import 'package:compedia/features/forgot_password/forgot_password_route.dart';
import 'package:compedia/features/home/home_route.dart';

import 'package:compedia/features/login/login_route.dart';
import 'package:compedia/features/main_app/main_app_route.dart';
import 'package:compedia/features/mentor/mentor_route.dart';
import 'package:compedia/features/onboarding/onboarding_route.dart';
import 'package:compedia/features/profile/profile_route.dart';
import 'package:compedia/features/register/register_route.dart';
import 'package:compedia/features/splash/splash_page.dart';
import 'package:compedia/features/splash/splash_route.dart';
import 'package:compedia/features/welcome/persona_done/persona_done_route.dart';
import 'package:compedia/features/welcome/questionnaire/questionnaire_route.dart';
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
    ...questionnaireRoute,
    ...personaDoneRoute,
    ...mainAppRoute,
    ...homeRoute,
    ...comunityRoute,
    ...mentorRoute,
    ...profileRoute,
    ...competitionRoute,
  ];
}
