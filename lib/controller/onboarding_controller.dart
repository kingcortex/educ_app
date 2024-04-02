import 'package:edcation_app/screens/signin_or_signup_screen.dart';
import 'package:edcation_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  Rx<Color> bdColor = AppTheme.purple1.obs;
  List<Color> lisColor = [AppTheme.purple1, AppTheme.orange1, AppTheme.purple2];
  List<Map<String, String>> contents = [
    {"title": "Welcome\nto careerspace", "image": "assets/1.png"},
    {"title": "Get support\n in your new\n career", "image": "assets/2.png"},
    {"title": "Learn and\n practrice", "image": "assets/3.png"}
  ];

  void onChange(int index) {
    currentIndex = index;
    bdColor.value = lisColor[index];
  }

  void nextPage() {
    if (currentIndex != 2) {
      pageController.nextPage(
        duration: const Duration(seconds: 1),
        curve: Curves.bounceOut,
      );
    } else {
      Get.offAll(
        () => const SignInOrSignUpScreen(),
        transition: Transition.native,
        duration: const Duration(seconds: 1),
      );
    }
  }
}
