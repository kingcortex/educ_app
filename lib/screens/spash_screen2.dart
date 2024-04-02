import 'package:edcation_app/screens/onboarding_sreen.dart';
import 'package:edcation_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class SpashScreen2 extends StatefulWidget {
  const SpashScreen2({super.key});

  @override
  State<SpashScreen2> createState() => _SpashScreen2State();
}

class _SpashScreen2State extends State<SpashScreen2> {
  @override
  void initState() {
    navigateToTheOnboarding();
    super.initState();
  }

  void navigateToTheOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => const OnboardingSreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.green,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset("assets/splash_top.svg")),
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset("assets/splash_bottom.svg"),
          ),
          Positioned.fill(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Careerplace",
                    style: AppTheme.textStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "//",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
