import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    checkSession();
  }

  void checkSession() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final session = _prefs.getString('session');
    if (session == null) {
      Get.offAllNamed('/login');
    }
  }
}
