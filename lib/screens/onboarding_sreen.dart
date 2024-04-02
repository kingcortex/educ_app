import 'package:edcation_app/controller/onboarding_controller.dart';
import 'package:edcation_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class OnboardingSreen extends StatelessWidget {
  const OnboardingSreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController controller = Get.put(OnboardingController());
    return Obx(
      () => Scaffold(
        backgroundColor: controller.bdColor.value,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) => controller.onChange(value),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Gap(150),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.contents[index]["title"]!,
                            textAlign: TextAlign.center,
                            style: AppTheme.textStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(controller.contents[index]["image"]!),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 180,
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      controller.nextPage();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: AppTheme.textStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
