import 'package:get/get.dart';

class Controller extends GetxController {
  final accountant = 0.obs;
  final name = "".obs;

  increment() {
    // if (accountant.value > 0)
    //   accountant.value = 0;
    // else
    //   accountant.value++;

    accountant.value++;
  }
}

