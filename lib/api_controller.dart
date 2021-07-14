import 'package:get/get.dart';

class ApiController extends GetxController with StateMixin<String> {
  ApiController() {
    change("", status: RxStatus.empty());
  }

  void see(withError) async {
    try {
      change(null, status: RxStatus.loading());
      String resp = await apiCall();

      if (withError)
        change(null, status: RxStatus.error("Compilation error"));
      else
        change(resp, status: RxStatus.success());
    } catch (err) {
      change(null, status: RxStatus.error(err.toString()));
    }
  }
}

Future<String> apiCall() async {
  await Future.delayed(Duration(seconds: 3));
  return "received data";
}
