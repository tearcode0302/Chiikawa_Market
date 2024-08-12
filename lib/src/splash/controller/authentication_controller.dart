import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthenticationController extends GetxController {
  RxBool isLogined = false.obs;

  void autoCheck() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    isLogined(true);
  }

  void logout() {
    isLogined(false);
  }
}