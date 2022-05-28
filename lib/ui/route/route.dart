import 'package:get/get.dart';

import 'package:mytour_app/ui/views/auth/sign_in.dart';
import 'package:mytour_app/ui/views/auth/sign_up.dart';
import 'package:mytour_app/ui/views/onboarding_screen.dart';
import 'package:mytour_app/ui/views/privacy_policy.dart';
import 'package:mytour_app/ui/views/splash_screen.dart';
import 'package:mytour_app/ui/views/user_form.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signup = '/sign-up-screen';
const String signin = '/sign-in-screen';
const String userform = '/user-form';
const String privacypolicy = '/privacy-policy';

// control all pages from here

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: signup,
    page: () => SignUp(),
  ),
  GetPage(
    name: signin,
    page: () => SignIn(),
  ),
  GetPage(
    name: userform,
    page: () => UserForm(),
  ),
  GetPage(
    name: privacypolicy,
    page: () => PrivacyPolicy(),
  ),
];
