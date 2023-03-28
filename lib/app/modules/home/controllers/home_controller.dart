import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkSession();
  }

  void checkSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final session = prefs.getString('session');
    if (session == null) {
      Get.offAllNamed('/login');
    }
  }
}
