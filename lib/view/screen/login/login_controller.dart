import 'dart:developer';

import 'package:ca_portal_2/view/screen/login/login_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';

class LoginController extends GetxController {
  TextEditingController loginIdcontroller = TextEditingController();
  TextEditingController loginPasscontroller = TextEditingController();
  RxBool isLoadin = false.obs;
  RxBool visibility = true.obs;
  RxInt loop = 0.obs;

  oneye() {
    visibility.value = !visibility.value;
  }

  compareFun() {
    int index = LoginDatabase().Data.length - 1;
    for (var a = 0; a <= index; a++) {
      if (loginIdcontroller.text == LoginDatabase().Data[a]["id"] &&
          loginPasscontroller.text == LoginDatabase().Data[a]["password"]) {
        return true;
      }
      isLoadin.value = false;
    }
  }

  loginTap() async {
    isLoadin.value = true;
    await Future.delayed(Duration(seconds: 2));
    log("========${compareFun()}");
    if (loginIdcontroller.text.isEmpty || loginPasscontroller.text.isEmpty) {
      Get.snackbar(
        "Massage",
        "field can't be empty",
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
        backgroundColor: Colors.red.shade200,
      );
    } else if (compareFun()) {
      Get.offAll(() => HomeScreen());
      Get.snackbar(
        "Massage",
        "Login Success",
        backgroundColor: Colors.white,
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
      );
    } else if (compareFun() == null) {
      Get.snackbar(
        "Massage",
        "Login failed",
        backgroundColor: Colors.red.shade200,
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
      );
    }
  }
}
