import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:api_practice/utils/color.dart';
import 'package:api_practice/utils/widgets/bottom_nav_bar.dart';
import 'package:api_practice/utils/app_translation.dart';


import 'controller/language_controller.dart';  // Import the ApiService

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate LanguageController to change the language dynamically
    LanguageController languageController = Get.put(LanguageController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      translations: AppTranslations(),
      home: BottomNavBar(),
    );
  }
}
