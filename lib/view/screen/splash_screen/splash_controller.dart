import 'package:ca_portal_2/local_storage/secure_storage.dart';
import 'package:ca_portal_2/view/screen/home/home_screen.dart';
import 'package:ca_portal_2/view/screen/login/login_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  onChangedPage() async {
    await Future.delayed(Duration(seconds: 3));
    var loginData = await LocalStorage().readData(key: "login");
    if (loginData != null) {
      Get.off(() => HomeScreen());
    } else {
      Get.off(() => LoginScreen());
    }
  }
}
