import 'package:compedia/features/competition/competition_route.dart';
import 'package:compedia/features/competition/detail_competition/detail_competition_route.dart';
import 'package:compedia/features/competition/find_competion/find_competion_route.dart';
import 'package:compedia/features/competition/followed_competion/followed_competion_route.dart';
import 'package:compedia/features/comunity/about_comunity/about_comunity_route.dart';
import 'package:compedia/features/comunity/comunity_route.dart';
import 'package:compedia/features/comunity/detail_comunity/detail_comunity_route.dart';
import 'package:compedia/features/comunity/find_comunity/find_comunity_route.dart';
import 'package:compedia/features/comunity/joined_comunity/joined_comunity_route.dart';
import 'package:compedia/features/comunity/topik_comunity/topik_comunity_route.dart';
import 'package:compedia/features/forgot_password/forgot_password_route.dart';
import 'package:compedia/features/home/home_route.dart';

import 'package:compedia/features/login/login_route.dart';
import 'package:compedia/features/main_app/main_app_route.dart';
import 'package:compedia/features/mentor/detail_mentor/detail_mentor_route.dart';
import 'package:compedia/features/mentor/find_mentor/find_mentor_route.dart';
import 'package:compedia/features/mentor/jadwal_mentoring/jadwal_mentoring_route.dart';
import 'package:compedia/features/mentor/mentor_route.dart';
import 'package:compedia/features/mentor/status_mentoring/detail_status_mentoring/detail_status_mentoring_route.dart';
import 'package:compedia/features/mentor/status_mentoring/status_mentoring_route.dart';
import 'package:compedia/features/onboarding/onboarding_route.dart';
import 'package:compedia/features/personal_question/personal_question_route.dart';
import 'package:compedia/features/profile/account/account_route.dart';
import 'package:compedia/features/profile/bookmark/bookmark_route.dart';
import 'package:compedia/features/profile/profile_route.dart';
import 'package:compedia/features/profile/term_condition/term_condition_route.dart';
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
    ...followedCompetionRoute,
    ...findCompetionRoute,
    ...detailCompetitionRoute,
    ...statusMentoringRoute,
    ...findMentorRoute,
    ...detailMentorRoute,
    ...jadwalMentoringRoute,
    ...detailStatusMentoringRoute,
    ...findComunityRoute,
    ...joinedComunityRoute,
    ...detailComunityRoute,
    ...aboutComunityRoute,
    ...topikComunityRoute,
    ...accountRoute,
    ...bookmarkRoute,
    ...termConditionRoute,
    ...personalQuestionRoute,
  ];
}
