import 'package:api_practice/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Photos extends StatelessWidget {
  const Photos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "photos".tr,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),

      body: Column(),
    );
  }
}
