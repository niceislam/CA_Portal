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
  List database = [];
  RxInt loop = 0.obs;

  oneye() {
    visibility.value = !visibility.value;
  }

  loginTap() async {
    for (var i in LoginDatabase().Data) {
      database.add(i);
    }
    if (loginIdcontroller.text.isEmpty || loginPasscontroller.text.isEmpty) {
      Get.snackbar(
        "Massage",
        "field can't be empty",
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
        backgroundColor: Colors.red.shade200,
      );
    } else if (loginIdcontroller.text == database[0]['id'] &&
        loginPasscontroller.text == database[0]['password']) {
      Get.offAll(() => HomeScreen());
      Get.snackbar(
        "Massage",
        "Login Success",
        backgroundColor: Colors.white,
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
      );
    } else {
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
