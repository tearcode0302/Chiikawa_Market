import 'package:get/get.dart';

class DataLoadContrller extends GetxController {
  RxBool isDataLoad = false.obs;

  void loadData() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    isDataLoad(true);
  }
}