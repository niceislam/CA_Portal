import 'dart:developer';

import 'package:ca_portal_2/database/all_student.dart';
import 'package:ca_portal_2/local_storage/secure_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../home/home_screen.dart';

class LoginController extends GetxController {
  Rx<dynamic> rememberData = "".obs;
  TextEditingController loginIdcontroller = TextEditingController();
  TextEditingController loginPasscontroller = TextEditingController();
  RxBool isLoadin = false.obs;
  RxBool visibility = true.obs;
  RxBool remember = false.obs;
  RxInt loop = 0.obs;
  RxList ModelData = [].obs;

  oneye() {
    visibility.value = !visibility.value;
  }

  rememberMe({required bool value}) {
    remember.value = value;
  }

  loginTap() async {
    isLoadin.value = true;
    await Future.delayed(Duration(seconds: 1));
    if (loginIdcontroller.text.isEmpty || loginPasscontroller.text.isEmpty) {
      Get.snackbar(
        "Massage",
        "field can't be empty",
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
        backgroundColor: Colors.red.shade200,
      );
    } else if (loginIdcontroller.text == StudentDetails().Info[0]['id'] &&
        loginPasscontroller.text == StudentDetails().Info[0]['password']) {
      Get.offAll(() => HomeScreen());
      await EasyLoading.showSuccess("Login Success");
      isLoadin.value = false;
      await LocalStorage().writeData(key: "login", value: "yes");
      if (remember == true) {
        await LocalStorage().writeData(
          key: "remember",
          value: "${loginIdcontroller.text}",
        );
      }
    } else {
      Get.snackbar(
        "Massage",
        "Login failed",
        backgroundColor: Colors.red.shade200,
        icon: Icon(Icons.sms_outlined),
        margin: EdgeInsets.symmetric(horizontal: 30),
      );
    }
    isLoadin.value = false;
  }

  remeberToTextfield() async {
    var data = await LocalStorage().readData(key: "remember");
    if (data != null) {
      rememberData.value = data;
    }
  }

  @override
  void onInit() {
    remeberToTextfield();
    super.onInit();
  }
}
