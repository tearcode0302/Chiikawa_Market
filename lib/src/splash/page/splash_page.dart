import 'package:chiikawamarketapp/src/common/app_font.dart';
import 'package:chiikawamarketapp/src/common/enum/authentication_status.dart';
import 'package:chiikawamarketapp/src/splash/controller/authentication_controller.dart';
import 'package:chiikawamarketapp/src/splash/controller/data_load_controller.dart';
import 'package:chiikawamarketapp/src/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/components/getx_listener.dart';
import '../enum/step_type.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetxListener<AuthenticationsStatus>(
          listen: (AuthenticationsStatus status) {
            switch (status) {
              case AuthenticationsStatus.authentication:
                Get.offNamed('/home');
                break;
              case AuthenticationsStatus.unAuthenticated:
                break;
              case AuthenticationsStatus.unknown:
                Get.offNamed('/login');
                break;
              case AuthenticationsStatus.init:
                break;
            }
          },
          stream: Get
              .find<AuthenticationController>().status,
          child: GetxListener<bool>(
            listen: (bool value) {
              if (value) {
                controller.loadStep(StepType.authCheck);
              }
            },
            stream: Get
                .find<DataLoadContrller>()
                .isDataLoad,
            child: GetxListener<StepType>(
              initcall: () {
                controller.loadStep(StepType.dataLoad);
              },
              listen: (StepType? value) {
                if (value == null) return;
                switch (value) {
                  case StepType.init:
                  case StepType.dataLoad:
                    Get.find<DataLoadContrller>().loadData();
                    break;
                  case StepType.authCheck:
                    Get.find<AuthenticationController>().authCheck();
                    break;
                }
              },
              stream: controller.loadStep,
              // child: Obx(
              //       () {
              //     return Text(
              //       '${controller.loadStep.value.name}중입니다.',
              //       style: const TextStyle(color: Colors.white),
              //     );
              //   },
              // ),
              child:_SplashView(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.loadStep(StepType.authCheck);
      },),
    );
  }
}

class _SplashView extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 200),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 99,
                height: 116,
                child: Image.asset('assets/images/chiikawa.png'),
              ),
              const SizedBox(height: 40,),
              const AppFont(
                '먼작귀 제품은 치이카와 마켓에서~',
                fontWeight: FontWeight.bold,
                size: 20,
              ),
              const SizedBox(height: 15,),
              AppFont(
                '치이카와 제품은 여기서, \n 지금 내 동네를 선택하고 시작해보세요!',
                align: TextAlign.center,
                size: 18,
                color: Colors.white.withOpacity(0.6),
              )
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: Column(
            children: [
              Obx(
                    () {
                  return Text(
                    '${controller.loadStep.value.name} 중 입니다.',
                    style: const TextStyle(color: Colors.white),
                  );
                },
              ),
              const SizedBox(height: 20,),
              const CircularProgressIndicator(
                strokeWidth: 1, color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}