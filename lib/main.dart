import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/spash_screen2.dart';

void main() {
  runApp(const EducApp());
}

class EducApp extends StatelessWidget {
  const EducApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpashScreen2(),
    );
  }
}
