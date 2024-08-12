import 'package:chiikawamarketapp/src/common/app_font.dart';
import 'package:chiikawamarketapp/src/splash/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.find<AuthenticationController>().logout();
          },
          child: AppFont('홈'),
        ),
      ),
    );
  }
}
