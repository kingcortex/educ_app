import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theme/app_theme.dart';

class SignInOrSignUpScreen extends StatelessWidget {
  const SignInOrSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.purple1,
      body: Column(
        children: [
          const Gap(150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let’s start\n your career!",
                textAlign: TextAlign.center,
                style: AppTheme.textStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          Image.asset("assets/4.png"),
          const Gap(40),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 255,
            decoration: BoxDecoration(
              color: const Color(0xffF5F378),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "Sign in",
              style: AppTheme.textStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Gap(15),
          Container(
            alignment: Alignment.center,
            height: 50,
            width: 255,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "Sign up",
              style: AppTheme.textStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
