import 'package:compedia/features/mentor_side/m_home_page/m_home_page_route.dart';
import 'package:compedia/features/mentor_side/m_main_app/m_main_app_route.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_disejutui/m_menoting_disejutui_route.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_menoting_selesai/m_menoting_selesai_route.dart';
import 'package:compedia/features/mentor_side/m_mentoring/m_mentoring_route.dart';
import 'package:compedia/features/mentor_side/m_onboarding/m_onboarding_route.dart';
import 'package:compedia/features/mentor_side/m_survey/m_survey_result/m_survey_result_route.dart';
import 'package:compedia/features/mentor_side/m_survey/m_survey_route.dart';
import 'package:compedia/features/student_side/competition/competition_route.dart';
import 'package:compedia/features/student_side/competition/detail_competition/detail_competition_route.dart';
import 'package:compedia/features/student_side/competition/find_competion/find_competion_route.dart';
import 'package:compedia/features/student_side/competition/followed_competion/followed_competion_route.dart';
import 'package:compedia/features/student_side/comunity/about_comunity/about_comunity_route.dart';
import 'package:compedia/features/student_side/comunity/comunity_route.dart';
import 'package:compedia/features/student_side/comunity/detail_comunity/detail_comunity_route.dart';
import 'package:compedia/features/student_side/comunity/find_comunity/find_comunity_route.dart';
import 'package:compedia/features/student_side/comunity/joined_comunity/joined_comunity_route.dart';
import 'package:compedia/features/student_side/comunity/topik_comunity/topik_comunity_route.dart';
import 'package:compedia/features/universal/forgot_password/forgot_password_route.dart';
import 'package:compedia/features/student_side/home/home_route.dart';

import 'package:compedia/features/universal/login/login_route.dart';
import 'package:compedia/features/student_side/main_app/main_app_route.dart';
import 'package:compedia/features/student_side/mentor/detail_mentor/detail_mentor_route.dart';
import 'package:compedia/features/student_side/mentor/find_mentor/find_mentor_route.dart';
import 'package:compedia/features/student_side/mentor/jadwal_mentoring/jadwal_mentoring_route.dart';
import 'package:compedia/features/student_side/mentor/mentor_route.dart';
import 'package:compedia/features/student_side/mentor/status_mentoring/detail_status_mentoring/detail_status_mentoring_route.dart';
import 'package:compedia/features/student_side/mentor/status_mentoring/status_mentoring_route.dart';
import 'package:compedia/features/universal/onboarding/onboarding_route.dart';
import 'package:compedia/features/student_side/personal_question/personal_question_route.dart';
import 'package:compedia/features/student_side/personal_question/result_personal/result_personal_route.dart';
import 'package:compedia/features/student_side/profile/account/account_route.dart';
import 'package:compedia/features/student_side/profile/bookmark/bookmark_route.dart';
import 'package:compedia/features/student_side/profile/profile_route.dart';
import 'package:compedia/features/student_side/profile/term_condition/term_condition_route.dart';
import 'package:compedia/features/universal/register/register_route.dart';
import 'package:compedia/features/universal/splash/splash_page.dart';
import 'package:compedia/features/universal/splash/splash_route.dart';
import 'package:compedia/features/universal/welcome/persona_done/persona_done_route.dart';
import 'package:compedia/features/universal/welcome/questionnaire/questionnaire_route.dart';
import 'package:compedia/features/universal/welcome/welcome_route.dart';

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
    ...resultPersonalRoute,
    ...mOnboardingRoute,
    ...mSurveyRoute,
    ...mSurveyResultRoute,
    ...mMainAppRoute,
    ...mMentoringRoute,
    ...mHomePageRoute,
    ...mMenotingDisejutuiRoute,
    ...mMenotingSelesaiRoute,
    ...mMenotingSelesaiRoute,
  ];
}
